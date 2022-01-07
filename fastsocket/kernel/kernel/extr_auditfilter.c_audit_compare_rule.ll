; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_compare_rule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_compare_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_krule = type { i64, i64, i64, i32, i64*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@AUDIT_BITMASK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_krule*, %struct.audit_krule*)* @audit_compare_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_compare_rule(%struct.audit_krule* %0, %struct.audit_krule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_krule*, align 8
  %5 = alloca %struct.audit_krule*, align 8
  %6 = alloca i32, align 4
  store %struct.audit_krule* %0, %struct.audit_krule** %4, align 8
  store %struct.audit_krule* %1, %struct.audit_krule** %5, align 8
  %7 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %8 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %11 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %38, label %14

14:                                               ; preds = %2
  %15 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %16 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %19 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %38, label %22

22:                                               ; preds = %14
  %23 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %24 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %27 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %32 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %35 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %22, %14, %2
  store i32 1, i32* %3, align 4
  br label %201

39:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %171, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %43 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %174

46:                                               ; preds = %40
  %47 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %48 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %56 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %54, %62
  br i1 %63, label %82, label %64

64:                                               ; preds = %46
  %65 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %66 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %74 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %73, i32 0, i32 5
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %72, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %64, %46
  store i32 1, i32* %3, align 4
  br label %201

83:                                               ; preds = %64
  %84 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %85 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %84, i32 0, i32 5
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %150 [
    i32 129, label %92
    i32 132, label %92
    i32 130, label %92
    i32 131, label %92
    i32 133, label %92
    i32 134, label %92
    i32 136, label %92
    i32 135, label %92
    i32 137, label %92
    i32 138, label %92
    i32 128, label %113
    i32 140, label %126
    i32 139, label %139
  ]

92:                                               ; preds = %83, %83, %83, %83, %83, %83, %83, %83, %83, %83
  %93 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %94 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %93, i32 0, i32 5
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %102 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %101, i32 0, i32 5
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @strcmp(i32 %100, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %92
  store i32 1, i32* %3, align 4
  br label %201

112:                                              ; preds = %92
  br label %170

113:                                              ; preds = %83
  %114 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %115 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @audit_watch_path(i32 %116)
  %118 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %119 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @audit_watch_path(i32 %120)
  %122 = call i32 @strcmp(i32 %117, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store i32 1, i32* %3, align 4
  br label %201

125:                                              ; preds = %113
  br label %170

126:                                              ; preds = %83
  %127 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %128 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @audit_tree_path(i32 %129)
  %131 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %132 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @audit_tree_path(i32 %133)
  %135 = call i32 @strcmp(i32 %130, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  store i32 1, i32* %3, align 4
  br label %201

138:                                              ; preds = %126
  br label %170

139:                                              ; preds = %83
  %140 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %141 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %144 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @strcmp(i32 %142, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  store i32 1, i32* %3, align 4
  br label %201

149:                                              ; preds = %139
  br label %170

150:                                              ; preds = %83
  %151 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %152 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %151, i32 0, i32 5
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %160 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %159, i32 0, i32 5
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %158, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %150
  store i32 1, i32* %3, align 4
  br label %201

169:                                              ; preds = %150
  br label %170

170:                                              ; preds = %169, %149, %138, %125, %112
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %40

174:                                              ; preds = %40
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %197, %174
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @AUDIT_BITMASK_SIZE, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %200

179:                                              ; preds = %175
  %180 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %181 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %180, i32 0, i32 4
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.audit_krule*, %struct.audit_krule** %5, align 8
  %188 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %187, i32 0, i32 4
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %186, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %179
  store i32 1, i32* %3, align 4
  br label %201

196:                                              ; preds = %179
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %175

200:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %200, %195, %168, %148, %137, %124, %111, %82, %38
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @audit_watch_path(i32) #1

declare dso_local i32 @audit_tree_path(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
