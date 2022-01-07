; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_superblock_doinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_superblock_doinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.security_mnt_opts = type { i32 }

@FS_BINARY_MOUNTDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*)* @superblock_doinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superblock_doinit(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.security_mnt_opts, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  %9 = call i32 @security_init_mnt_opts(%struct.security_mnt_opts* %7)
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FS_BINARY_MOUNTDATA, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @selinux_parse_opts_str(i8* %22, %struct.security_mnt_opts* %7)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %31

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %12
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = call i32 @selinux_set_mnt_opts(%struct.super_block* %29, %struct.security_mnt_opts* %7)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = call i32 @security_free_mnt_opts(%struct.security_mnt_opts* %7)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @security_init_mnt_opts(%struct.security_mnt_opts*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @selinux_parse_opts_str(i8*, %struct.security_mnt_opts*) #1

declare dso_local i32 @selinux_set_mnt_opts(%struct.super_block*, %struct.security_mnt_opts*) #1

declare dso_local i32 @security_free_mnt_opts(%struct.security_mnt_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
