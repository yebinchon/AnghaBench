; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_policy.c_ima_match_rules.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/integrity/ima/extr_ima_policy.c_ima_match_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ima_measure_rule_entry = type { i32, i32, i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@IMA_FUNC = common dso_local global i32 0, align 4
@IMA_MASK = common dso_local global i32 0, align 4
@IMA_FSMAGIC = common dso_local global i32 0, align 4
@IMA_UID = common dso_local global i32 0, align 4
@MAX_LSM_RULES = common dso_local global i32 0, align 4
@Audit_equal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ima_measure_rule_entry*, %struct.inode*, i32, i32)* @ima_match_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_match_rules(%struct.ima_measure_rule_entry* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ima_measure_rule_entry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ima_measure_rule_entry* %0, %struct.ima_measure_rule_entry** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %15, %struct.task_struct** %10, align 8
  %16 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %17 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IMA_FUNC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %24 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %151

29:                                               ; preds = %22, %4
  %30 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %31 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IMA_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %38 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %151

43:                                               ; preds = %36, %29
  %44 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %45 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IMA_FSMAGIC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %52 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %151

61:                                               ; preds = %50, %43
  %62 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %63 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IMA_UID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %70 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %73 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %151

79:                                               ; preds = %68, %61
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %147, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @MAX_LSM_RULES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %150

84:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  %85 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %86 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %85, i32 0, i32 5
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  br label %147

95:                                               ; preds = %84
  %96 = load i32, i32* %11, align 4
  switch i32 %96, label %141 [
    i32 131, label %97
    i32 133, label %97
    i32 132, label %97
    i32 128, label %119
    i32 130, label %119
    i32 129, label %119
  ]

97:                                               ; preds = %95, %95, %95
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = call i32 @security_inode_getsecid(%struct.inode* %98, i32* %13)
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %102 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %101, i32 0, i32 5
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @Audit_equal, align 4
  %110 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %111 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %110, i32 0, i32 5
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @security_filter_rule_match(i32 %100, i32 %108, i32 %109, i32 %117, i32* null)
  store i32 %118, i32* %12, align 4
  br label %142

119:                                              ; preds = %95, %95, %95
  %120 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %121 = call i32 @security_task_getsecid(%struct.task_struct* %120, i32* %14)
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %124 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %123, i32 0, i32 5
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @Audit_equal, align 4
  %132 = load %struct.ima_measure_rule_entry*, %struct.ima_measure_rule_entry** %6, align 8
  %133 = getelementptr inbounds %struct.ima_measure_rule_entry, %struct.ima_measure_rule_entry* %132, i32 0, i32 5
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @security_filter_rule_match(i32 %122, i32 %130, i32 %131, i32 %139, i32* null)
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %95, %119
  br label %142

142:                                              ; preds = %141, %97
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  store i32 0, i32* %5, align 4
  br label %151

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %94
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %80

150:                                              ; preds = %80
  store i32 1, i32* %5, align 4
  br label %151

151:                                              ; preds = %150, %145, %78, %60, %42, %28
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @security_inode_getsecid(%struct.inode*, i32*) #1

declare dso_local i32 @security_filter_rule_match(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @security_task_getsecid(%struct.task_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
