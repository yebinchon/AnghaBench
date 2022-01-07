; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_work.c_dtrace_go.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_work.c_dtrace_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__, i32*, i32* }
%struct.TYPE_13__ = type { i64, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@DTRACEIOC_ENABLE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DTRACEIOC_GO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EDT_DESTRUCTIVE = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EDT_ISANON = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EDT_NOANON = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EDT_ENDTOOBIG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EDT_BUFTOOSMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_go(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = call i32 @dt_set_errno(%struct.TYPE_12__* %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %135

16:                                               ; preds = %1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @dtrace_program_exec(%struct.TYPE_12__* %22, i32* %25, i32* null)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ENOTTY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %28
  store i32 -1, i32* %2, align 4
  br label %135

40:                                               ; preds = %34, %21, %16
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = call i8* @dtrace_getopt_dof(%struct.TYPE_12__* %41)
  store i8* %42, i8** %5, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %135

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = load i32, i32* @DTRACEIOC_ENABLE, align 4
  %51 = call i32 @dt_ioctl(%struct.TYPE_12__* %49, i32 %50, %struct.TYPE_13__* %4)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @errno, align 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @dtrace_dof_destroy(%struct.TYPE_12__* %53, i8* %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %71

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ENOTTY, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62, %58
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @dt_set_errno(%struct.TYPE_12__* %68, i32 %69)
  store i32 %70, i32* %2, align 4
  br label %135

71:                                               ; preds = %62, %45
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = load i32, i32* @DTRACEIOC_GO, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = call i32 @dt_ioctl(%struct.TYPE_12__* %72, i32 %73, %struct.TYPE_13__* %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %122

78:                                               ; preds = %71
  %79 = load i32, i32* @errno, align 4
  %80 = load i32, i32* @EACCES, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = load i32, i32* @EDT_DESTRUCTIVE, align 4
  %85 = call i32 @dt_set_errno(%struct.TYPE_12__* %83, i32 %84)
  store i32 %85, i32* %2, align 4
  br label %135

86:                                               ; preds = %78
  %87 = load i32, i32* @errno, align 4
  %88 = load i32, i32* @EALREADY, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = load i32, i32* @EDT_ISANON, align 4
  %93 = call i32 @dt_set_errno(%struct.TYPE_12__* %91, i32 %92)
  store i32 %93, i32* %2, align 4
  br label %135

94:                                               ; preds = %86
  %95 = load i32, i32* @errno, align 4
  %96 = load i32, i32* @ENOENT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = load i32, i32* @EDT_NOANON, align 4
  %101 = call i32 @dt_set_errno(%struct.TYPE_12__* %99, i32 %100)
  store i32 %101, i32* %2, align 4
  br label %135

102:                                              ; preds = %94
  %103 = load i32, i32* @errno, align 4
  %104 = load i32, i32* @E2BIG, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = load i32, i32* @EDT_ENDTOOBIG, align 4
  %109 = call i32 @dt_set_errno(%struct.TYPE_12__* %107, i32 %108)
  store i32 %109, i32* %2, align 4
  br label %135

110:                                              ; preds = %102
  %111 = load i32, i32* @errno, align 4
  %112 = load i32, i32* @ENOSPC, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = load i32, i32* @EDT_BUFTOOSMALL, align 4
  %117 = call i32 @dt_set_errno(%struct.TYPE_12__* %115, i32 %116)
  store i32 %117, i32* %2, align 4
  br label %135

118:                                              ; preds = %110
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %120 = load i32, i32* @errno, align 4
  %121 = call i32 @dt_set_errno(%struct.TYPE_12__* %119, i32 %120)
  store i32 %121, i32* %2, align 4
  br label %135

122:                                              ; preds = %71
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %126 = call i32 @dt_options_load(%struct.TYPE_12__* %125)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = load i32, i32* @errno, align 4
  %131 = call i32 @dt_set_errno(%struct.TYPE_12__* %129, i32 %130)
  store i32 %131, i32* %2, align 4
  br label %135

132:                                              ; preds = %122
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = call i32 @dt_aggregate_go(%struct.TYPE_12__* %133)
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %132, %128, %118, %114, %106, %98, %90, %82, %67, %44, %39, %12
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @dt_set_errno(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dtrace_program_exec(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i8* @dtrace_getopt_dof(%struct.TYPE_12__*) #1

declare dso_local i32 @dt_ioctl(%struct.TYPE_12__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @dtrace_dof_destroy(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @dt_options_load(%struct.TYPE_12__*) #1

declare dso_local i32 @dt_aggregate_go(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
