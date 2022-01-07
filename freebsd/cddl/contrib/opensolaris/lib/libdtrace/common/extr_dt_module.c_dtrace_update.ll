; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dtrace_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32*, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"egid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"euid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pgid\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ppid\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sid\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"genunix\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"krtld\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@DTRACE_O_NOSYS = common dso_local global i32 0, align 4
@OBJFS_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_update(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %7 = call i32* @dt_list_next(i32* %6)
  store i32* %7, i32** %3, align 8
  br label %8

8:                                                ; preds = %15, %1
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @dt_module_unload(%struct.TYPE_7__* %12, i32* %13)
  br label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @dt_list_next(i32* %16)
  store i32* %17, i32** %3, align 8
  br label %8

18:                                               ; preds = %8
  %19 = call i32 (...) @getegid()
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_8__* @dt_idhash_lookup(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = call i32 (...) @geteuid()
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_8__* @dt_idhash_lookup(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = call i32 (...) @getgid()
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_8__* @dt_idhash_lookup(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  %37 = call i32 (...) @getpid()
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_8__* @dt_idhash_lookup(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = call i32 @getpgid(i32 0)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.TYPE_8__* @dt_idhash_lookup(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 4
  %49 = call i32 (...) @getppid()
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.TYPE_8__* @dt_idhash_lookup(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  %55 = call i32 @getsid(i32 0)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.TYPE_8__* @dt_idhash_lookup(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  %61 = call i32 (...) @getuid()
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_8__* @dt_idhash_lookup(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = call i8* @dt_module_lookup_by_name(%struct.TYPE_7__* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = call i8* @dt_module_lookup_by_name(%struct.TYPE_7__* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  store i32* %74, i32** %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %18
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = call i8* @dt_module_lookup_by_name(%struct.TYPE_7__* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  store i32* %84, i32** %86, align 8
  br label %87

87:                                               ; preds = %81, %18
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @dt_list_delete(i32* %104, i32* %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @dt_list_prepend(i32* %110, i32* %113)
  br label %115

115:                                              ; preds = %102, %97, %92, %87
  ret void
}

declare dso_local i32* @dt_list_next(i32*) #1

declare dso_local i32 @dt_module_unload(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @getegid(...) #1

declare dso_local %struct.TYPE_8__* @dt_idhash_lookup(i32, i8*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @getpgid(i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @getsid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i8* @dt_module_lookup_by_name(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @dt_list_delete(i32*, i32*) #1

declare dso_local i32 @dt_list_prepend(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
