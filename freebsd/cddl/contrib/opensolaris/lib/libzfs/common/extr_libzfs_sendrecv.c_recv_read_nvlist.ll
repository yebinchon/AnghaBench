; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_recv_read_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_recv_read_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid stream (malformed nvlist)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32**, i32, i32*)* @recv_read_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_read_nvlist(i32* %0, i32 %1, i32 %2, i32** %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i8* @zfs_alloc(i32* %16, i32 %17)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %7, align 4
  br label %53

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @recv_read(i32* %24, i32 %25, i8* %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %7, align 4
  br label %53

37:                                               ; preds = %23
  %38 = load i8*, i8** %14, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32**, i32*** %11, align 8
  %41 = call i32 @nvlist_unpack(i8* %38, i32 %39, i32** %40, i32 0)
  store i32 %41, i32* %15, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @TEXT_DOMAIN, align 4
  %49 = call i32 @dgettext(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @zfs_error_aux(i32* %47, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %46, %33, %21
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i8* @zfs_alloc(i32*, i32) #1

declare dso_local i32 @recv_read(i32*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @nvlist_unpack(i8*, i32, i32**, i32) #1

declare dso_local i32 @zfs_error_aux(i32*, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
