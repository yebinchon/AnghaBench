; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_find_uid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_find_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.posix_ace_state_array = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.posix_acl_state*, %struct.posix_ace_state_array*, i64)* @find_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_uid(%struct.posix_acl_state* %0, %struct.posix_ace_state_array* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.posix_acl_state*, align 8
  %6 = alloca %struct.posix_ace_state_array*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.posix_acl_state* %0, %struct.posix_acl_state** %5, align 8
  store %struct.posix_ace_state_array* %1, %struct.posix_ace_state_array** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %29, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %12 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %17 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %70

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %34 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %39 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %37, i64* %44, align 8
  %45 = load %struct.posix_acl_state*, %struct.posix_acl_state** %5, align 8
  %46 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %50 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %48, i32* %56, align 4
  %57 = load %struct.posix_acl_state*, %struct.posix_acl_state** %5, align 8
  %58 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %62 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %60, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %32, %26
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
