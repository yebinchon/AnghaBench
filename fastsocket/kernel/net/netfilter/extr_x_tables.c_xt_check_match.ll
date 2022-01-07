; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_x_tables.c_xt_check_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_x_tables.c_xt_check_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.xt_mtchk_param*)*, i32, i32, i32* }

@.str = private unnamed_addr constant [45 x i8] c"%s_tables: %s match: invalid size %Zu != %u\0A\00", align 1
@xt_prefix = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%s_tables: %s match: only valid in %s table, not %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"%s_tables: %s match: used from hooks %s, but only valid from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s_tables: %s match: only valid for protocol %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xt_check_match(%struct.xt_mtchk_param* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xt_mtchk_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %13 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @XT_ALIGN(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %22 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %49

27:                                               ; preds = %20
  %28 = load i32*, i32** @xt_prefix, align 8
  %29 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %30 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %35 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %40 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @XT_ALIGN(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %195

49:                                               ; preds = %20, %4
  %50 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %51 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %91

56:                                               ; preds = %49
  %57 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %58 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %63 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @strcmp(i32* %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %56
  %68 = load i32*, i32** @xt_prefix, align 8
  %69 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %70 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %75 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %80 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = ptrtoint i32* %83 to i32
  %85 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %86 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %78, i32 %84, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %195

91:                                               ; preds = %56, %49
  %92 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %93 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %91
  %99 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %100 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %103 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %101, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %98
  %111 = load i32*, i32** @xt_prefix, align 8
  %112 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %113 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %118 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %123 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %124 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @textify_hooks(i8* %122, i32 64, i32 %125)
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %128 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %129 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @textify_hooks(i8* %127, i32 64, i32 %132)
  %134 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %121, i32 %126, i32 %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %195

137:                                              ; preds = %98, %91
  %138 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %139 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %175

144:                                              ; preds = %137
  %145 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %146 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %145, i32 0, i32 2
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %152, %144
  %156 = load i32*, i32** @xt_prefix, align 8
  %157 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %158 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %163 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %162, i32 0, i32 2
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %168 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, i32, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %166, i32 %171)
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %195

175:                                              ; preds = %152, %137
  %176 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %177 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %176, i32 0, i32 2
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i32 (%struct.xt_mtchk_param*)*, i32 (%struct.xt_mtchk_param*)** %179, align 8
  %181 = icmp ne i32 (%struct.xt_mtchk_param*)* %180, null
  br i1 %181, label %182, label %194

182:                                              ; preds = %175
  %183 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %184 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %183, i32 0, i32 2
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  %187 = load i32 (%struct.xt_mtchk_param*)*, i32 (%struct.xt_mtchk_param*)** %186, align 8
  %188 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %6, align 8
  %189 = call i32 %187(%struct.xt_mtchk_param* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %182
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %5, align 4
  br label %195

194:                                              ; preds = %182, %175
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %194, %191, %155, %110, %67, %27
  %196 = load i32, i32* %5, align 4
  ret i32 %196
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
