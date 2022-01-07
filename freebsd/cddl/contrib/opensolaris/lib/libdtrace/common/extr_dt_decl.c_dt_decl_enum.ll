; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32* }

@CTF_K_ENUM = common dso_local global i32 0, align 4
@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_14__* null, align 8
@CTF_ADD_NONROOT = common dso_local global i32 0, align 4
@CTF_ADD_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"enum %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@CTF_ERR = common dso_local global i32 0, align 4
@dt_decl_hasmembers = common dso_local global i32 0, align 4
@D_DECL_TYPERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"type redeclared: %s\0A\00", align 1
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to define %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @dt_decl_enum(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @CTF_K_ENUM, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call %struct.TYPE_13__* @dt_decl_spec(i32 %9, i8* %10)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %3, align 8
  %12 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  br label %36

28:                                               ; preds = %1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @CTF_ADD_NONROOT, align 4
  store i32 %43, i32* %8, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @CTF_ADD_ROOT, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = trunc i64 %13 to i32
  %48 = load i8*, i8** %2, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i8*, i8** %2, align 8
  br label %53

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i8* [ %51, %50 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %52 ]
  %55 = call i32 @snprintf(i8* %15, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i8*, i8** %2, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @ctf_lookup_by_name(i32* %59, i8* %15)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @CTF_ERR, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @dt_decl_hasmembers, align 4
  %67 = call i64 @ctf_enum_iter(i32* %64, i32 %65, i32 %66, i32* null)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @D_DECL_TYPERED, align 4
  %71 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  br label %72

72:                                               ; preds = %69, %63
  br label %87

73:                                               ; preds = %58, %53
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @ctf_add_enum(i32* %74, i32 %75, i8* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @CTF_ERR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @D_UNKNOWN, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @ctf_errno(i32* %82)
  %84 = call i32 @ctf_errmsg(i32 %83)
  %85 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %15, i32 %84)
  br label %86

86:                                               ; preds = %80, %73
  br label %87

87:                                               ; preds = %86, %72
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dt_scope_push(i32* %94, i32 %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %98)
  ret %struct.TYPE_13__* %97
}

declare dso_local %struct.TYPE_13__* @dt_decl_spec(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @ctf_lookup_by_name(i32*, i8*) #1

declare dso_local i64 @ctf_enum_iter(i32*, i32, i32, i32*) #1

declare dso_local i32 @xyerror(i32, i8*, i8*, ...) #1

declare dso_local i32 @ctf_add_enum(i32*, i32, i8*) #1

declare dso_local i32 @ctf_errmsg(i32) #1

declare dso_local i32 @ctf_errno(i32*) #1

declare dso_local i32 @dt_scope_push(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
