; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_krule_to_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_krule_to_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_rule = type { i32, i32, i32*, i32*, i32*, i32 }
%struct.audit_krule = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@Audit_not_equal = common dso_local global i64 0, align 8
@AUDIT_NEGATE = common dso_local global i32 0, align 4
@audit_ops = common dso_local global i32* null, align 8
@AUDIT_BITMASK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_rule* (%struct.audit_krule*)* @audit_krule_to_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_rule* @audit_krule_to_rule(%struct.audit_krule* %0) #0 {
  %2 = alloca %struct.audit_rule*, align 8
  %3 = alloca %struct.audit_krule*, align 8
  %4 = alloca %struct.audit_rule*, align 8
  %5 = alloca i32, align 4
  store %struct.audit_krule* %0, %struct.audit_krule** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.audit_rule* @kzalloc(i32 40, i32 %6)
  store %struct.audit_rule* %7, %struct.audit_rule** %4, align 8
  %8 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %9 = icmp ne %struct.audit_rule* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.audit_rule* null, %struct.audit_rule** %2, align 8
  br label %144

15:                                               ; preds = %1
  %16 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %17 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %20 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  %23 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %24 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %26 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %29 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %31 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %34 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %117, %15
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %38 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %120

41:                                               ; preds = %35
  %42 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %43 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %51 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %57 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %56, i32 0, i32 5
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %65 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %71 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %96

74:                                               ; preds = %41
  %75 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %76 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %75, i32 0, i32 5
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @Audit_not_equal, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %74
  %86 = load i32, i32* @AUDIT_NEGATE, align 4
  %87 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %88 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %86
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %85, %74
  br label %116

96:                                               ; preds = %41
  %97 = load i32*, i32** @audit_ops, align 8
  %98 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %99 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %98, i32 0, i32 5
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %97, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %109 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %107
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %96, %95
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %35

120:                                              ; preds = %35
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @AUDIT_BITMASK_SIZE, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load %struct.audit_krule*, %struct.audit_krule** %3, align 8
  %127 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  %134 = getelementptr inbounds %struct.audit_rule, %struct.audit_rule* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %125
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %121

142:                                              ; preds = %121
  %143 = load %struct.audit_rule*, %struct.audit_rule** %4, align 8
  store %struct.audit_rule* %143, %struct.audit_rule** %2, align 8
  br label %144

144:                                              ; preds = %142, %14
  %145 = load %struct.audit_rule*, %struct.audit_rule** %2, align 8
  ret %struct.audit_rule* %145
}

declare dso_local %struct.audit_rule* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
