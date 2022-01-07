; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_sou.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_decl.c_dt_decl_sou.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { i64, i32* }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_14__* null, align 8
@CTF_ADD_NONROOT = common dso_local global i64 0, align 8
@CTF_ADD_ROOT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@CTF_K_STRUCT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@CTF_ERR = common dso_local global i64 0, align 8
@CTF_K_FORWARD = common dso_local global i64 0, align 8
@D_DECL_TYPERED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"type redeclared: %s\0A\00", align 1
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to define %s: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @dt_decl_sou(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.TYPE_13__* @dt_decl_spec(i64 %11, i8* %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %5, align 8
  %14 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %8, align 8
  br label %38

38:                                               ; preds = %30, %22
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @CTF_ADD_NONROOT, align 8
  store i64 %45, i64* %10, align 8
  br label %48

46:                                               ; preds = %38
  %47 = load i64, i64* @CTF_ADD_ROOT, align 8
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = trunc i64 %15 to i32
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @CTF_K_STRUCT, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %55 = load i8*, i8** %4, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %60

58:                                               ; preds = %48
  %59 = load i8*, i8** %4, align 8
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %57 ], [ %59, %58 ]
  %62 = call i32 @snprintf(i8* %17, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %54, i8* %61)
  %63 = load i8*, i8** %4, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = load i32*, i32** %8, align 8
  %67 = call i64 @ctf_lookup_by_name(i32* %66, i8* %17)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* @CTF_ERR, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @ctf_type_kind(i32* %71, i64 %72)
  %74 = load i64, i64* @CTF_K_FORWARD, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @D_DECL_TYPERED, align 4
  %78 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  br label %79

79:                                               ; preds = %76, %70, %65, %60
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @CTF_K_STRUCT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32*, i32** %8, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i64 @ctf_add_struct(i32* %84, i64 %85, i8* %86)
  store i64 %87, i64* %9, align 8
  br label %93

88:                                               ; preds = %79
  %89 = load i32*, i32** %8, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = call i64 @ctf_add_union(i32* %89, i64 %90, i8* %91)
  store i64 %92, i64* %9, align 8
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @CTF_ERR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load i32*, i32** %8, align 8
  %99 = call i64 @ctf_update(i32* %98)
  %100 = load i64, i64* @CTF_ERR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %97, %93
  %103 = load i32, i32* @D_UNKNOWN, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @ctf_errno(i32* %104)
  %106 = call i32 @ctf_errmsg(i32 %105)
  %107 = call i32 (i32, i8*, i8*, ...) @xyerror(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %17, i32 %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @dt_scope_push(i32* %115, i64 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %119 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %119)
  ret %struct.TYPE_13__* %118
}

declare dso_local %struct.TYPE_13__* @dt_decl_spec(i64, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @ctf_lookup_by_name(i32*, i8*) #1

declare dso_local i64 @ctf_type_kind(i32*, i64) #1

declare dso_local i32 @xyerror(i32, i8*, i8*, ...) #1

declare dso_local i64 @ctf_add_struct(i32*, i64, i8*) #1

declare dso_local i64 @ctf_add_union(i32*, i64, i8*) #1

declare dso_local i64 @ctf_update(i32*) #1

declare dso_local i32 @ctf_errmsg(i32) #1

declare dso_local i32 @ctf_errno(i32*) #1

declare dso_local i32 @dt_scope_push(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
