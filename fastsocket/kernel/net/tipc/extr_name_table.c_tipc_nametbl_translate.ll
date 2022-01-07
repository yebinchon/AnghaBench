; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_translate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_nametbl_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_seq = type { %struct.publication*, %struct.publication*, %struct.publication* }
%struct.publication = type { %struct.publication*, %struct.publication*, %struct.publication*, i32, i32 }
%struct.name_seq = type { i32 }

@tipc_own_addr = common dso_local global i32 0, align 4
@tipc_nametbl_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_nametbl_translate(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sub_seq*, align 8
  %9 = alloca %struct.publication*, align 8
  %10 = alloca %struct.name_seq*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.publication* null, %struct.publication** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @tipc_own_addr, align 4
  %15 = call i32 @in_scope(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %159

18:                                               ; preds = %3
  %19 = call i32 @read_lock_bh(i32* @tipc_nametbl_lock)
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.name_seq* @nametbl_find_seq(i32 %20)
  store %struct.name_seq* %21, %struct.name_seq** %10, align 8
  %22 = load %struct.name_seq*, %struct.name_seq** %10, align 8
  %23 = icmp ne %struct.name_seq* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %156

29:                                               ; preds = %18
  %30 = load %struct.name_seq*, %struct.name_seq** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.sub_seq* @nameseq_find_subseq(%struct.name_seq* %30, i32 %31)
  store %struct.sub_seq* %32, %struct.sub_seq** %8, align 8
  %33 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %34 = icmp ne %struct.sub_seq* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %156

40:                                               ; preds = %29
  %41 = load %struct.name_seq*, %struct.name_seq** %10, align 8
  %42 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %101

51:                                               ; preds = %40
  %52 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %53 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %52, i32 0, i32 2
  %54 = load %struct.publication*, %struct.publication** %53, align 8
  store %struct.publication* %54, %struct.publication** %9, align 8
  %55 = load %struct.publication*, %struct.publication** %9, align 8
  %56 = icmp ne %struct.publication* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = load %struct.publication*, %struct.publication** %9, align 8
  %59 = getelementptr inbounds %struct.publication, %struct.publication* %58, i32 0, i32 2
  %60 = load %struct.publication*, %struct.publication** %59, align 8
  %61 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %62 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %61, i32 0, i32 2
  store %struct.publication* %60, %struct.publication** %62, align 8
  br label %63

63:                                               ; preds = %143, %130, %112, %94, %82, %57
  %64 = load %struct.publication*, %struct.publication** %9, align 8
  %65 = getelementptr inbounds %struct.publication, %struct.publication* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.publication*, %struct.publication** %9, align 8
  %68 = getelementptr inbounds %struct.publication, %struct.publication* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.name_seq*, %struct.name_seq** %10, align 8
  %72 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = call i32 @read_unlock_bh(i32* @tipc_nametbl_lock)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %159

76:                                               ; preds = %51
  %77 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %78 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %77, i32 0, i32 1
  %79 = load %struct.publication*, %struct.publication** %78, align 8
  store %struct.publication* %79, %struct.publication** %9, align 8
  %80 = load %struct.publication*, %struct.publication** %9, align 8
  %81 = icmp ne %struct.publication* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.publication*, %struct.publication** %9, align 8
  %84 = getelementptr inbounds %struct.publication, %struct.publication* %83, i32 0, i32 1
  %85 = load %struct.publication*, %struct.publication** %84, align 8
  %86 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %87 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %86, i32 0, i32 1
  store %struct.publication* %85, %struct.publication** %87, align 8
  br label %63

88:                                               ; preds = %76
  %89 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %90 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %89, i32 0, i32 0
  %91 = load %struct.publication*, %struct.publication** %90, align 8
  store %struct.publication* %91, %struct.publication** %9, align 8
  %92 = load %struct.publication*, %struct.publication** %9, align 8
  %93 = icmp ne %struct.publication* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.publication*, %struct.publication** %9, align 8
  %96 = getelementptr inbounds %struct.publication, %struct.publication* %95, i32 0, i32 0
  %97 = load %struct.publication*, %struct.publication** %96, align 8
  %98 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %99 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %98, i32 0, i32 0
  store %struct.publication* %97, %struct.publication** %99, align 8
  br label %63

100:                                              ; preds = %88
  br label %152

101:                                              ; preds = %40
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @tipc_own_addr, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %108 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %107, i32 0, i32 2
  %109 = load %struct.publication*, %struct.publication** %108, align 8
  store %struct.publication* %109, %struct.publication** %9, align 8
  %110 = load %struct.publication*, %struct.publication** %9, align 8
  %111 = icmp ne %struct.publication* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.publication*, %struct.publication** %9, align 8
  %114 = getelementptr inbounds %struct.publication, %struct.publication* %113, i32 0, i32 2
  %115 = load %struct.publication*, %struct.publication** %114, align 8
  %116 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %117 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %116, i32 0, i32 2
  store %struct.publication* %115, %struct.publication** %117, align 8
  br label %63

118:                                              ; preds = %106
  br label %151

119:                                              ; preds = %101
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @in_own_cluster(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %126 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %125, i32 0, i32 1
  %127 = load %struct.publication*, %struct.publication** %126, align 8
  store %struct.publication* %127, %struct.publication** %9, align 8
  %128 = load %struct.publication*, %struct.publication** %9, align 8
  %129 = icmp ne %struct.publication* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load %struct.publication*, %struct.publication** %9, align 8
  %132 = getelementptr inbounds %struct.publication, %struct.publication* %131, i32 0, i32 1
  %133 = load %struct.publication*, %struct.publication** %132, align 8
  %134 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %135 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %134, i32 0, i32 1
  store %struct.publication* %133, %struct.publication** %135, align 8
  br label %63

136:                                              ; preds = %124
  br label %150

137:                                              ; preds = %119
  %138 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %139 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %138, i32 0, i32 0
  %140 = load %struct.publication*, %struct.publication** %139, align 8
  store %struct.publication* %140, %struct.publication** %9, align 8
  %141 = load %struct.publication*, %struct.publication** %9, align 8
  %142 = icmp ne %struct.publication* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.publication*, %struct.publication** %9, align 8
  %145 = getelementptr inbounds %struct.publication, %struct.publication* %144, i32 0, i32 0
  %146 = load %struct.publication*, %struct.publication** %145, align 8
  %147 = load %struct.sub_seq*, %struct.sub_seq** %8, align 8
  %148 = getelementptr inbounds %struct.sub_seq, %struct.sub_seq* %147, i32 0, i32 0
  store %struct.publication* %146, %struct.publication** %148, align 8
  br label %63

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149, %136
  br label %151

151:                                              ; preds = %150, %118
  br label %152

152:                                              ; preds = %151, %100
  %153 = load %struct.name_seq*, %struct.name_seq** %10, align 8
  %154 = getelementptr inbounds %struct.name_seq, %struct.name_seq* %153, i32 0, i32 0
  %155 = call i32 @spin_unlock_bh(i32* %154)
  br label %156

156:                                              ; preds = %152, %39, %28
  %157 = load i32*, i32** %7, align 8
  store i32 0, i32* %157, align 4
  %158 = call i32 @read_unlock_bh(i32* @tipc_nametbl_lock)
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %63, %17
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @in_scope(i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.name_seq* @nametbl_find_seq(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sub_seq* @nameseq_find_subseq(%struct.name_seq*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i64 @in_own_cluster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
