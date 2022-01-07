; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_open_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_open_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.filename = type { i8* }

@AT_FDCWD = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@FMODE_EXEC = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_OPEN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MNT_NOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @open_exec(i8* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filename, align 8
  store i8* %0, i8** %3, align 8
  %7 = getelementptr inbounds %struct.filename, %struct.filename* %6, i32 0, i32 0
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i32, i32* @AT_FDCWD, align 4
  %10 = load i32, i32* @O_LARGEFILE, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FMODE_EXEC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MAY_EXEC, align 4
  %16 = load i32, i32* @MAY_OPEN, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.file* @do_filp_open(i32 %9, %struct.filename* %6, i32 %14, i32 0, i32 %17)
  store %struct.file* %18, %struct.file** %4, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call i64 @IS_ERR(%struct.file* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %60

23:                                               ; preds = %1
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @S_ISREG(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  br label %62

37:                                               ; preds = %23
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MNT_NOEXEC, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %62

48:                                               ; preds = %37
  %49 = load %struct.file*, %struct.file** %4, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = call i32 @fsnotify_open(%struct.TYPE_8__* %52)
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = call i32 @deny_write_access(%struct.file* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %62

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %22
  %61 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %61, %struct.file** %2, align 8
  br label %67

62:                                               ; preds = %58, %47, %36
  %63 = load %struct.file*, %struct.file** %4, align 8
  %64 = call i32 @fput(%struct.file* %63)
  %65 = load i32, i32* %5, align 4
  %66 = call %struct.file* @ERR_PTR(i32 %65)
  store %struct.file* %66, %struct.file** %2, align 8
  br label %67

67:                                               ; preds = %62, %60
  %68 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %68
}

declare dso_local %struct.file* @do_filp_open(i32, %struct.filename*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @fsnotify_open(%struct.TYPE_8__*) #1

declare dso_local i32 @deny_write_access(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
