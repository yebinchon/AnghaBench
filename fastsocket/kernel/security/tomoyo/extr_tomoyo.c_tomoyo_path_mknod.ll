; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32, i32 }
%struct.dentry = type { i32 }

@TOMOYO_TYPE_CREATE_ACL = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@TOMOYO_TYPE_MKCHAR_ACL = common dso_local global i32 0, align 4
@TOMOYO_TYPE_MKBLOCK_ACL = common dso_local global i32 0, align 4
@TOMOYO_TYPE_MKFIFO_ACL = common dso_local global i32 0, align 4
@TOMOYO_TYPE_MKSOCK_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.dentry*, i32, i32)* @tomoyo_path_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_path_mknod(%struct.path* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.path, align 8
  %10 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %12 = load %struct.path*, %struct.path** %5, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.dentry*
  store %struct.dentry* %16, %struct.dentry** %11, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = ptrtoint %struct.dentry* %18 to i32
  store i32 %19, i32* %17, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @TOMOYO_TYPE_CREATE_ACL, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @S_IFMT, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %33 [
    i32 130, label %25
    i32 131, label %27
    i32 129, label %29
    i32 128, label %31
  ]

25:                                               ; preds = %4
  %26 = load i32, i32* @TOMOYO_TYPE_MKCHAR_ACL, align 4
  store i32 %26, i32* %10, align 4
  br label %33

27:                                               ; preds = %4
  %28 = load i32, i32* @TOMOYO_TYPE_MKBLOCK_ACL, align 4
  store i32 %28, i32* %10, align 4
  br label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @TOMOYO_TYPE_MKFIFO_ACL, align 4
  store i32 %30, i32* %10, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @TOMOYO_TYPE_MKSOCK_ACL, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %4, %31, %29, %27, %25
  %34 = call i32 (...) @tomoyo_domain()
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @tomoyo_check_1path_perm(i32 %34, i32 %35, %struct.path* %9)
  ret i32 %36
}

declare dso_local i32 @tomoyo_check_1path_perm(i32, i32, %struct.path*) #1

declare dso_local i32 @tomoyo_domain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
