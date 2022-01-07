; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_initialize_macros.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_initialize_macros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32, i8* }
%struct.mapping = type { %struct.map_value* }
%struct.map_value = type { i32 }

@def_hash = common dso_local global i32 0, align 4
@def_name_eq_p = common dso_local global i32 0, align 4
@modes = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_MACHINE_MODE = common dso_local global i32 0, align 4
@find_mode = common dso_local global i32 0, align 4
@uses_mode_macro_p = common dso_local global i32 0, align 4
@apply_mode_macro = common dso_local global i32 0, align 4
@codes = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NUM_RTX_CODE = common dso_local global i32 0, align 4
@find_code = common dso_local global i32 0, align 4
@uses_code_macro_p = common dso_local global i32 0, align 4
@apply_code_macro = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"MODE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CODE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_macros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_macros() #0 {
  %1 = alloca %struct.mapping*, align 8
  %2 = alloca %struct.mapping*, align 8
  %3 = alloca %struct.map_value**, align 8
  %4 = alloca %struct.map_value**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @def_hash, align 4
  %9 = load i32, i32* @def_name_eq_p, align 4
  %10 = call i8* @htab_create(i32 13, i32 %8, i32 %9, i32 0)
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modes, i32 0, i32 1), align 8
  %11 = load i32, i32* @def_hash, align 4
  %12 = load i32, i32* @def_name_eq_p, align 4
  %13 = call i8* @htab_create(i32 13, i32 %11, i32 %12, i32 0)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modes, i32 0, i32 5), align 8
  %14 = load i32, i32* @MAX_MACHINE_MODE, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modes, i32 0, i32 0), align 8
  %15 = load i32, i32* @find_mode, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modes, i32 0, i32 4), align 8
  %16 = load i32, i32* @uses_mode_macro_p, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modes, i32 0, i32 3), align 4
  %17 = load i32, i32* @apply_mode_macro, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modes, i32 0, i32 2), align 8
  %18 = load i32, i32* @def_hash, align 4
  %19 = load i32, i32* @def_name_eq_p, align 4
  %20 = call i8* @htab_create(i32 13, i32 %18, i32 %19, i32 0)
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @codes, i32 0, i32 1), align 8
  %21 = load i32, i32* @def_hash, align 4
  %22 = load i32, i32* @def_name_eq_p, align 4
  %23 = call i8* @htab_create(i32 13, i32 %21, i32 %22, i32 0)
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @codes, i32 0, i32 5), align 8
  %24 = load i32, i32* @NUM_RTX_CODE, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @codes, i32 0, i32 0), align 8
  %25 = load i32, i32* @find_code, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @codes, i32 0, i32 4), align 8
  %26 = load i32, i32* @uses_code_macro_p, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @codes, i32 0, i32 3), align 4
  %27 = load i32, i32* @apply_code_macro, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @codes, i32 0, i32 2), align 8
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modes, i32 0, i32 1), align 8
  %29 = call %struct.mapping* @add_mapping(%struct.TYPE_4__* @modes, i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.mapping* %29, %struct.mapping** %1, align 8
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @modes, i32 0, i32 1), align 8
  %31 = call %struct.mapping* @add_mapping(%struct.TYPE_4__* @modes, i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.mapping* %31, %struct.mapping** %2, align 8
  %32 = load %struct.mapping*, %struct.mapping** %1, align 8
  %33 = getelementptr inbounds %struct.mapping, %struct.mapping* %32, i32 0, i32 0
  store %struct.map_value** %33, %struct.map_value*** %3, align 8
  %34 = load %struct.mapping*, %struct.mapping** %2, align 8
  %35 = getelementptr inbounds %struct.mapping, %struct.mapping* %34, i32 0, i32 0
  store %struct.map_value** %35, %struct.map_value*** %4, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %68, %0
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MAX_MACHINE_MODE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @GET_MODE_NAME(i32 %41)
  %43 = call i8* @xstrdup(i8* %42)
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %55, %40
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call signext i8 @TOLOWER(i8 signext %52)
  %54 = load i8*, i8** %6, align 8
  store i8 %53, i8* %54, align 1
  br label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  br label %45

58:                                               ; preds = %45
  %59 = load %struct.map_value**, %struct.map_value*** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i8* @GET_MODE_NAME(i32 %61)
  %63 = call %struct.map_value** @add_map_value(%struct.map_value** %59, i32 %60, i8* %62)
  store %struct.map_value** %63, %struct.map_value*** %4, align 8
  %64 = load %struct.map_value**, %struct.map_value*** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call %struct.map_value** @add_map_value(%struct.map_value** %64, i32 %65, i8* %66)
  store %struct.map_value** %67, %struct.map_value*** %3, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %36

71:                                               ; preds = %36
  %72 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @codes, i32 0, i32 1), align 8
  %73 = call %struct.mapping* @add_mapping(%struct.TYPE_4__* @codes, i8* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.mapping* %73, %struct.mapping** %1, align 8
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @codes, i32 0, i32 1), align 8
  %75 = call %struct.mapping* @add_mapping(%struct.TYPE_4__* @codes, i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.mapping* %75, %struct.mapping** %2, align 8
  %76 = load %struct.mapping*, %struct.mapping** %1, align 8
  %77 = getelementptr inbounds %struct.mapping, %struct.mapping* %76, i32 0, i32 0
  store %struct.map_value** %77, %struct.map_value*** %3, align 8
  %78 = load %struct.mapping*, %struct.mapping** %2, align 8
  %79 = getelementptr inbounds %struct.mapping, %struct.mapping* %78, i32 0, i32 0
  store %struct.map_value** %79, %struct.map_value*** %4, align 8
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %112, %71
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NUM_RTX_CODE, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = call i8* @GET_RTX_NAME(i32 %85)
  %87 = call i8* @xstrdup(i8* %86)
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %99, %84
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call signext i8 @TOUPPER(i8 signext %96)
  %98 = load i8*, i8** %6, align 8
  store i8 %97, i8* %98, align 1
  br label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  br label %89

102:                                              ; preds = %89
  %103 = load %struct.map_value**, %struct.map_value*** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i8* @GET_RTX_NAME(i32 %105)
  %107 = call %struct.map_value** @add_map_value(%struct.map_value** %103, i32 %104, i8* %106)
  store %struct.map_value** %107, %struct.map_value*** %3, align 8
  %108 = load %struct.map_value**, %struct.map_value*** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i8*, i8** %5, align 8
  %111 = call %struct.map_value** @add_map_value(%struct.map_value** %108, i32 %109, i8* %110)
  store %struct.map_value** %111, %struct.map_value*** %4, align 8
  br label %112

112:                                              ; preds = %102
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %80

115:                                              ; preds = %80
  ret void
}

declare dso_local i8* @htab_create(i32, i32, i32, i32) #1

declare dso_local %struct.mapping* @add_mapping(%struct.TYPE_4__*, i8*, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local signext i8 @TOLOWER(i8 signext) #1

declare dso_local %struct.map_value** @add_map_value(%struct.map_value**, i32, i8*) #1

declare dso_local i8* @GET_RTX_NAME(i32) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
