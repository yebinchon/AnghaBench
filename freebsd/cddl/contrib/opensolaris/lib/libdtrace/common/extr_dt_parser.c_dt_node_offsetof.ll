; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_offsetof.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_offsetof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@yypcb = common dso_local global %struct.TYPE_14__* null, align 8
@EDT_COMPILER = common dso_local global i32 0, align 4
@CTF_K_STRUCT = common dso_local global i64 0, align 8
@CTF_K_UNION = common dso_local global i64 0, align 8
@D_OFFSETOF_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"offsetof operand must be a struct or union type\0A\00", align 1
@CTF_ERR = common dso_local global i64 0, align 8
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to determine offset of %s: %s\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@DT_NF_BITFIELD = common dso_local global i32 0, align 4
@D_OFFSETOF_BITFIELD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot take offset of a bit-field: %s\0A\00", align 1
@NBBY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @dt_node_offsetof(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = add nsw i64 %13, 1
  %15 = call i8* @alloca(i64 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strcpy(i8* %16, i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @free(i8* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @dt_decl_type(i32* %21, %struct.TYPE_11__* %5)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @dt_decl_free(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EDT_COMPILER, align 4
  %32 = call i32 @longjmp(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %2
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ctf_type_resolve(i32 %35, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @ctf_type_kind(i32 %40, i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @CTF_K_STRUCT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @CTF_K_UNION, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @D_OFFSETOF_TYPE, align 4
  %52 = call i32 (i32, i8*, ...) @xyerror(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46, %33
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @ctf_member_info(i32 %55, i32 %56, i8* %57, %struct.TYPE_13__* %9)
  %59 = load i64, i64* @CTF_ERR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i32, i32* @D_UNKNOWN, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ctf_errno(i32 %65)
  %67 = call i32 @ctf_errmsg(i32 %66)
  %68 = call i32 (i32, i8*, ...) @xyerror(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %67)
  br label %69

69:                                               ; preds = %61, %53
  %70 = call i32 @bzero(%struct.TYPE_12__* %6, i32 4)
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @B_FALSE, align 4
  %76 = call i32 @dt_node_type_assign(%struct.TYPE_12__* %6, i32 %72, i32 %74, i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DT_NF_BITFIELD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load i32, i32* @D_OFFSETOF_BITFIELD, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (i32, i8*, ...) @xyerror(i32 %83, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %69
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NBBY, align 4
  %90 = sdiv i32 %88, %89
  %91 = call %struct.TYPE_12__* @dt_node_int(i32 %90)
  ret %struct.TYPE_12__* %91
}

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dt_decl_type(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @dt_decl_free(i32*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @ctf_type_resolve(i32, i32) #1

declare dso_local i64 @ctf_type_kind(i32, i32) #1

declare dso_local i32 @xyerror(i32, i8*, ...) #1

declare dso_local i64 @ctf_member_info(i32, i32, i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @ctf_errmsg(i32) #1

declare dso_local i32 @ctf_errno(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dt_node_type_assign(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @dt_node_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
