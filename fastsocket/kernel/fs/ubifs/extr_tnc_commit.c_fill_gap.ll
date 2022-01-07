; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_fill_gap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_fill_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64, %struct.ubifs_znode*, %struct.ubifs_znode* }
%struct.ubifs_znode = type { %struct.ubifs_znode*, i32 }

@.str = private unnamed_addr constant [56 x i8] c"LEB %d:%d to %d len %d nodes written %d wasted bytes %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32, i32*)* @fill_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_gap(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_znode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, 7
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ubifs_assert(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 7
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ubifs_assert(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ubifs_assert(i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %160

41:                                               ; preds = %5
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %113, %41
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 4
  %46 = load %struct.ubifs_znode*, %struct.ubifs_znode** %45, align 8
  %47 = icmp ne %struct.ubifs_znode* %46, null
  br i1 %47, label %48, label %114

48:                                               ; preds = %43
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 4
  %52 = load %struct.ubifs_znode*, %struct.ubifs_znode** %51, align 8
  %53 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %49, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %112

59:                                               ; preds = %48
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 4
  %62 = load %struct.ubifs_znode*, %struct.ubifs_znode** %61, align 8
  store %struct.ubifs_znode* %62, %struct.ubifs_znode** %17, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i8* @ALIGN(i32 %63, i32 8)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sle i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ubifs_assert(i32 %69)
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @make_idx_node(%struct.ubifs_info* %71, i64 %77, %struct.ubifs_znode* %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %59
  %86 = load i32, i32* %19, align 4
  store i32 %86, i32* %6, align 4
  br label %160

87:                                               ; preds = %59
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %14, align 4
  %94 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %95 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %94, i32 0, i32 0
  %96 = load %struct.ubifs_znode*, %struct.ubifs_znode** %95, align 8
  %97 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %98 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %97, i32 0, i32 4
  store %struct.ubifs_znode* %96, %struct.ubifs_znode** %98, align 8
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %100 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %99, i32 0, i32 4
  %101 = load %struct.ubifs_znode*, %struct.ubifs_znode** %100, align 8
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 5
  %104 = load %struct.ubifs_znode*, %struct.ubifs_znode** %103, align 8
  %105 = icmp eq %struct.ubifs_znode* %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %87
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %108 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %107, i32 0, i32 4
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %108, align 8
  br label %109

109:                                              ; preds = %106, %87
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %113

112:                                              ; preds = %48
  br label %114

113:                                              ; preds = %109
  br label %43

114:                                              ; preds = %112, %43
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %114
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @ALIGN(i32 %121, i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %130 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %14, align 4
  %133 = sub nsw i32 %131, %132
  store i32 %133, i32* %16, align 4
  br label %136

134:                                              ; preds = %114
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %134, %120
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @dbg_gc(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %138, i32 %139, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %148 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = load i32, i32* %16, align 4
  %154 = call i32 @ubifs_pad(%struct.ubifs_info* %146, i64 %152, i32 %153)
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %155
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %15, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %136, %85, %40
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local i32 @ubifs_assert(i32) #1

declare dso_local i32 @ubifs_idx_node_sz(%struct.ubifs_info*, i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @make_idx_node(%struct.ubifs_info*, i64, %struct.ubifs_znode*, i32, i32, i32) #1

declare dso_local i32 @dbg_gc(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_pad(%struct.ubifs_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
