; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_assign_call_site_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_assign_call_site_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sjlj_lp_info = type { i32, i32, i32, i64 }
%struct.eh_region = type { i32 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"action_record_data\00", align 1
@action_record_hash = common dso_local global i32 0, align 4
@action_record_eq = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@eh_region = common dso_local global i32 0, align 4
@call_site_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sjlj_lp_info*)* @sjlj_assign_call_site_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sjlj_assign_call_site_values(i32 %0, %struct.sjlj_lp_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sjlj_lp_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.eh_region*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sjlj_lp_info* %1, %struct.sjlj_lp_info** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @VARRAY_UCHAR_INIT(i32 %14, i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @action_record_hash, align 4
  %17 = load i32, i32* @action_record_eq, align 4
  %18 = load i32, i32* @free, align 4
  %19 = call i32 @htab_create(i32 31, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %68, %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %25
  %29 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %29, i64 %31
  %33 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %28
  %37 = load i32, i32* @eh_region, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.eh_region* @VEC_index(i32 %37, i32 %42, i32 %43)
  store %struct.eh_region* %44, %struct.eh_region** %8, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %47 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %50 = call i32 @collect_one_action_chain(i32 %48, %struct.eh_region* %49)
  %51 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %51, i64 %53
  %55 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %56, i64 %58
  %60 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %36
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %36
  br label %67

67:                                               ; preds = %66, %28
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %6, align 4
  br label %25

71:                                               ; preds = %25
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @htab_delete(i32 %72)
  store i32 0, i32* %7, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %99, %71
  %80 = load i32, i32* %6, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %83, i64 %85
  %87 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %93, i64 %95
  %97 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %96, i32 0, i32 2
  store i32 %91, i32* %97, align 8
  br label %98

98:                                               ; preds = %90, %82
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %6, align 4
  br label %79

102:                                              ; preds = %79
  store i32 1, i32* @call_site_base, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %152, %102
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %155

111:                                              ; preds = %108
  %112 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %112, i64 %114
  %116 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %111
  %120 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %120, i64 %122
  %124 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, -2
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  store i32 0, i32* %7, align 4
  br label %144

129:                                              ; preds = %119
  %130 = load i32, i32* %9, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 -1, i32* %7, align 4
  br label %143

133:                                              ; preds = %129
  %134 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %134, i64 %136
  %138 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @GEN_INT(i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @add_call_site(i32 %140, i32 %141)
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %133, %132
  br label %144

144:                                              ; preds = %143, %128
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %146, i64 %148
  %150 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %149, i32 0, i32 1
  store i32 %145, i32* %150, align 4
  br label %151

151:                                              ; preds = %144, %111
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %6, align 4
  br label %108

155:                                              ; preds = %108
  ret void
}

declare dso_local i32 @VARRAY_UCHAR_INIT(i32, i32, i8*) #1

declare dso_local i32 @htab_create(i32, i32, i32, i32) #1

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i32) #1

declare dso_local i32 @collect_one_action_chain(i32, %struct.eh_region*) #1

declare dso_local i32 @htab_delete(i32) #1

declare dso_local i32 @add_call_site(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
