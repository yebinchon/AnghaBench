; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_union.c_create_amfs_union_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_union.c_create_amfs_union_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/defaults\00", align 1
@VLOOK_CREATE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unionfs: could not mount %s: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @create_amfs_union_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_amfs_union_node(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @STREQ(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @VLOOK_CREATE, align 4
  %15 = call i32* @amfs_generic_lookup_child(i32 %12, i8* %13, i32* %6, i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @amfs_generic_mount_child(i32* %22, i32* %6)
  br label %24

24:                                               ; preds = %21, %18, %11
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* @errno, align 4
  %29 = load i32, i32* @XLOG_ERROR, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @plog(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @STREQ(i8*, i8*) #1

declare dso_local i32* @amfs_generic_lookup_child(i32, i8*, i32*, i32) #1

declare dso_local i32 @amfs_generic_mount_child(i32*, i32*) #1

declare dso_local i32 @plog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
