; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32* }

@CTF_K_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"char\00", align 1
@DT_DA_SHORT = common dso_local global i32 0, align 4
@DT_DA_LONG = common dso_local global i32 0, align 4
@DT_DA_LONGLONG = common dso_local global i32 0, align 4
@D_DECL_CHARATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"invalid type declaration: short and long may not be used with char type\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@DT_DA_SIGNED = common dso_local global i32 0, align 4
@DT_DA_UNSIGNED = common dso_local global i32 0, align 4
@D_DECL_VOIDATTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"invalid type declaration: attributes may not be used with void type\0A\00", align 1
@CTF_K_INTEGER = common dso_local global i64 0, align 8
@D_DECL_SIGNINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [82 x i8] c"invalid type declaration: signed and unsigned may only be used with integer type\0A\00", align 1
@CTF_K_FLOAT = common dso_local global i64 0, align 8
@D_DECL_LONGINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [99 x i8] c"invalid type declaration: long and long long may only be used with integer or floating-point type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.TYPE_4__*)* @dt_decl_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @dt_decl_check(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CTF_K_UNKNOWN, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %2, align 8
  br label %109

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @strcmp(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DT_DA_SHORT, align 4
  %27 = load i32, i32* @DT_DA_LONG, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DT_DA_LONGLONG, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @D_DECL_CHARATTR, align 4
  %35 = call i32 @xyerror(i32 %34, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %22, %16, %11
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @strcmp(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DT_DA_SHORT, align 4
  %52 = load i32, i32* @DT_DA_LONG, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @DT_DA_LONGLONG, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @DT_DA_SIGNED, align 4
  %57 = load i32, i32* @DT_DA_UNSIGNED, align 4
  %58 = or i32 %56, %57
  %59 = or i32 %55, %58
  %60 = and i32 %50, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = load i32, i32* @D_DECL_VOIDATTR, align 4
  %64 = call i32 @xyerror(i32 %63, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %47, %41, %36
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CTF_K_INTEGER, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DT_DA_SIGNED, align 4
  %76 = load i32, i32* @DT_DA_UNSIGNED, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @D_DECL_SIGNINT, align 4
  %82 = call i32 @xyerror(i32 %81, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %71, %65
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CTF_K_INTEGER, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %83
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CTF_K_FLOAT, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DT_DA_LONG, align 4
  %100 = load i32, i32* @DT_DA_LONGLONG, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @D_DECL_LONGINT, align 4
  %106 = call i32 @xyerror(i32 %105, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %95, %89, %83
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %2, align 8
  br label %109

109:                                              ; preds = %107, %9
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %110
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @xyerror(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
