; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_x_tables.c_xt_check_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_x_tables.c_xt_check_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.xt_tgchk_param*)*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s_tables: %s target: invalid size %Zu != %u\0A\00", align 1
@xt_prefix = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s_tables: %s target: only valid in %s table, not %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"%s_tables: %s target: used from hooks %s, but only usable from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"%s_tables: %s target: only valid for protocol %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xt_check_target(%struct.xt_tgchk_param* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xt_tgchk_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %13 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @XT_ALIGN(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  %21 = load i32*, i32** @xt_prefix, align 8
  %22 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %23 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %28 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %33 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @XT_ALIGN(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %31, i32 %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %188

42:                                               ; preds = %4
  %43 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %44 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %84

49:                                               ; preds = %42
  %50 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %51 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %56 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @strcmp(i32* %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %49
  %61 = load i32*, i32** @xt_prefix, align 8
  %62 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %63 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %68 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %73 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = ptrtoint i32* %76 to i32
  %78 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %79 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %71, i32 %77, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %188

84:                                               ; preds = %49, %42
  %85 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %86 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %130

91:                                               ; preds = %84
  %92 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %93 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %96 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = xor i32 %99, -1
  %101 = and i32 %94, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %91
  %104 = load i32*, i32** @xt_prefix, align 8
  %105 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %106 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %111 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %116 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %117 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @textify_hooks(i8* %115, i32 64, i32 %118)
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %121 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %122 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @textify_hooks(i8* %120, i32 64, i32 %125)
  %127 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %114, i32 %119, i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %188

130:                                              ; preds = %91, %84
  %131 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %132 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %130
  %138 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %139 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %148, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %145, %137
  %149 = load i32*, i32** @xt_prefix, align 8
  %150 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %151 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %156 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %155, i32 0, i32 2
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %161 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %160, i32 0, i32 2
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %154, i32 %159, i32 %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %5, align 4
  br label %188

168:                                              ; preds = %145, %130
  %169 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %170 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %169, i32 0, i32 2
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32 (%struct.xt_tgchk_param*)*, i32 (%struct.xt_tgchk_param*)** %172, align 8
  %174 = icmp ne i32 (%struct.xt_tgchk_param*)* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %168
  %176 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %177 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %176, i32 0, i32 2
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32 (%struct.xt_tgchk_param*)*, i32 (%struct.xt_tgchk_param*)** %179, align 8
  %181 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %6, align 8
  %182 = call i32 %180(%struct.xt_tgchk_param* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %175
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %5, align 4
  br label %188

187:                                              ; preds = %175, %168
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %187, %184, %148, %103, %60, %20
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @XT_ALIGN(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, ...) #1

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @textify_hooks(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
