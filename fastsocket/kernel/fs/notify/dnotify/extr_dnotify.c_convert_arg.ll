; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/dnotify/extr_dnotify.c_convert_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/dnotify/extr_dnotify.c_convert_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FS_EVENT_ON_CHILD = common dso_local global i32 0, align 4
@DN_MULTISHOT = common dso_local global i64 0, align 8
@FS_DN_MULTISHOT = common dso_local global i32 0, align 4
@DN_DELETE = common dso_local global i64 0, align 8
@FS_DELETE = common dso_local global i32 0, align 4
@FS_MOVED_FROM = common dso_local global i32 0, align 4
@DN_MODIFY = common dso_local global i64 0, align 8
@FS_MODIFY = common dso_local global i32 0, align 4
@DN_ACCESS = common dso_local global i64 0, align 8
@FS_ACCESS = common dso_local global i32 0, align 4
@DN_ATTRIB = common dso_local global i64 0, align 8
@FS_ATTRIB = common dso_local global i32 0, align 4
@DN_RENAME = common dso_local global i64 0, align 8
@FS_DN_RENAME = common dso_local global i32 0, align 4
@DN_CREATE = common dso_local global i64 0, align 8
@FS_CREATE = common dso_local global i32 0, align 4
@FS_MOVED_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @convert_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_arg(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @FS_EVENT_ON_CHILD, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @DN_MULTISHOT, align 8
  %7 = and i64 %5, %6
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @FS_DN_MULTISHOT, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @DN_DELETE, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @FS_DELETE, align 4
  %20 = load i32, i32* @FS_MOVED_FROM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %13
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @DN_MODIFY, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @FS_MODIFY, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @DN_ACCESS, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @FS_ACCESS, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @DN_ATTRIB, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @FS_ATTRIB, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* @DN_RENAME, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @FS_DN_RENAME, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i64, i64* %2, align 8
  %62 = load i64, i64* @DN_CREATE, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32, i32* @FS_CREATE, align 4
  %67 = load i32, i32* @FS_MOVED_TO, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
