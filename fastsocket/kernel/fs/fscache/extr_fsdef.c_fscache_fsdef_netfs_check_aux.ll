; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_fsdef.c_fscache_fsdef_netfs_check_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_fsdef.c_fscache_fsdef_netfs_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_netfs = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"{%s},,%hu\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" = OBSOLETE [dl=%d v=%zu]\00", align 1
@FSCACHE_CHECKAUX_OBSOLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c" = OBSOLETE [ver=%x net=%x]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" = OKAY\00", align 1
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @fscache_fsdef_netfs_check_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscache_fsdef_netfs_check_aux(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fscache_netfs*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.fscache_netfs*
  store %struct.fscache_netfs* %11, %struct.fscache_netfs** %8, align 8
  %12 = load %struct.fscache_netfs*, %struct.fscache_netfs** %8, align 8
  %13 = getelementptr inbounds %struct.fscache_netfs, %struct.fscache_netfs* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @_enter(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21, i64 4)
  %23 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @memcpy(i32* %9, i8* %25, i32 4)
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.fscache_netfs*, %struct.fscache_netfs** %8, align 8
  %29 = getelementptr inbounds %struct.fscache_netfs, %struct.fscache_netfs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.fscache_netfs*, %struct.fscache_netfs** %8, align 8
  %35 = getelementptr inbounds %struct.fscache_netfs, %struct.fscache_netfs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %24
  %40 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %32, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
