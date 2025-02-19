; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_libdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_opt_libdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

@EDT_BADOPTVAL = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64)* @dt_opt_libdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_opt_libdir(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = load i32, i32* @EDT_BADOPTVAL, align 4
  %14 = call i32 @dt_set_errno(%struct.TYPE_8__* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  br label %35

15:                                               ; preds = %3
  %16 = call %struct.TYPE_9__* @malloc(i32 8)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @strdup(i8* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = call i32 @free(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = load i32, i32* @EDT_NOMEM, align 4
  %29 = call i32 @dt_set_errno(%struct.TYPE_8__* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = call i32 @dt_list_append(i32* %32, %struct.TYPE_9__* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %24, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @dt_set_errno(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @dt_list_append(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
