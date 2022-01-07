; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_insert_nonunique.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_insert_nonunique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab_node = type { %struct.TYPE_2__, %struct.avtab_node* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.avtab = type { %struct.avtab_node**, i32 }
%struct.avtab_key = type { i32, i64, i64, i64 }
%struct.avtab_datum = type { i32 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_ENABLED_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.avtab_node* @avtab_insert_nonunique(%struct.avtab* %0, %struct.avtab_key* %1, %struct.avtab_datum* %2) #0 {
  %4 = alloca %struct.avtab_node*, align 8
  %5 = alloca %struct.avtab*, align 8
  %6 = alloca %struct.avtab_key*, align 8
  %7 = alloca %struct.avtab_datum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.avtab_node*, align 8
  %10 = alloca %struct.avtab_node*, align 8
  %11 = alloca i32, align 4
  store %struct.avtab* %0, %struct.avtab** %5, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %6, align 8
  store %struct.avtab_datum* %2, %struct.avtab_datum** %7, align 8
  %12 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %13 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AVTAB_ENABLED, align 4
  %16 = load i32, i32* @AVTAB_ENABLED_OLD, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.avtab*, %struct.avtab** %5, align 8
  %21 = icmp ne %struct.avtab* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.avtab*, %struct.avtab** %5, align 8
  %24 = getelementptr inbounds %struct.avtab, %struct.avtab* %23, i32 0, i32 0
  %25 = load %struct.avtab_node**, %struct.avtab_node*** %24, align 8
  %26 = icmp ne %struct.avtab_node** %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %3
  store %struct.avtab_node* null, %struct.avtab_node** %4, align 8
  br label %151

28:                                               ; preds = %22
  %29 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %30 = load %struct.avtab*, %struct.avtab** %5, align 8
  %31 = getelementptr inbounds %struct.avtab, %struct.avtab* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @avtab_hash(%struct.avtab_key* %29, i32 %32)
  store i32 %33, i32* %8, align 4
  store %struct.avtab_node* null, %struct.avtab_node** %9, align 8
  %34 = load %struct.avtab*, %struct.avtab** %5, align 8
  %35 = getelementptr inbounds %struct.avtab, %struct.avtab* %34, i32 0, i32 0
  %36 = load %struct.avtab_node**, %struct.avtab_node*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %36, i64 %38
  %40 = load %struct.avtab_node*, %struct.avtab_node** %39, align 8
  store %struct.avtab_node* %40, %struct.avtab_node** %10, align 8
  br label %41

41:                                               ; preds = %138, %28
  %42 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %43 = icmp ne %struct.avtab_node* %42, null
  br i1 %43, label %44, label %143

44:                                               ; preds = %41
  %45 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %46 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %49 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %44
  %54 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %55 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %58 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %56, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %53
  %63 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %64 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %67 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %74 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %72, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %143

80:                                               ; preds = %71, %62, %53, %44
  %81 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %82 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %85 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %143

90:                                               ; preds = %80
  %91 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %92 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %95 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %90
  %100 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %101 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %104 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %102, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %143

109:                                              ; preds = %99, %90
  %110 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %111 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %114 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %112, %116
  br i1 %117, label %118, label %137

118:                                              ; preds = %109
  %119 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %120 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %123 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %121, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %118
  %128 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %129 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %132 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %130, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %143

137:                                              ; preds = %127, %118, %109
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  store %struct.avtab_node* %139, %struct.avtab_node** %9, align 8
  %140 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %141 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %140, i32 0, i32 1
  %142 = load %struct.avtab_node*, %struct.avtab_node** %141, align 8
  store %struct.avtab_node* %142, %struct.avtab_node** %10, align 8
  br label %41

143:                                              ; preds = %136, %108, %89, %79, %41
  %144 = load %struct.avtab*, %struct.avtab** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %147 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %148 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %149 = load %struct.avtab_datum*, %struct.avtab_datum** %7, align 8
  %150 = call %struct.avtab_node* @avtab_insert_node(%struct.avtab* %144, i32 %145, %struct.avtab_node* %146, %struct.avtab_node* %147, %struct.avtab_key* %148, %struct.avtab_datum* %149)
  store %struct.avtab_node* %150, %struct.avtab_node** %4, align 8
  br label %151

151:                                              ; preds = %143, %27
  %152 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  ret %struct.avtab_node* %152
}

declare dso_local i32 @avtab_hash(%struct.avtab_key*, i32) #1

declare dso_local %struct.avtab_node* @avtab_insert_node(%struct.avtab*, i32, %struct.avtab_node*, %struct.avtab_node*, %struct.avtab_key*, %struct.avtab_datum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
