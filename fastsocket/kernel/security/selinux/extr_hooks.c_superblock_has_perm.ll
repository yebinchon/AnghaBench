; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_superblock_has_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_superblock_has_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.super_block = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32 }
%struct.common_audit_data = type { i32 }

@SECCLASS_FILESYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.super_block*, i32, %struct.common_audit_data*)* @superblock_has_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superblock_has_perm(%struct.cred* %0, %struct.super_block* %1, i32 %2, %struct.common_audit_data* %3) #0 {
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.common_audit_data*, align 8
  %9 = alloca %struct.superblock_security_struct*, align 8
  %10 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.common_audit_data* %3, %struct.common_audit_data** %8, align 8
  %11 = load %struct.cred*, %struct.cred** %5, align 8
  %12 = call i32 @cred_sid(%struct.cred* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %14, align 8
  store %struct.superblock_security_struct* %15, %struct.superblock_security_struct** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %9, align 8
  %18 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SECCLASS_FILESYSTEM, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %23 = call i32 @avc_has_perm(i32 %16, i32 %19, i32 %20, i32 %21, %struct.common_audit_data* %22)
  ret i32 %23
}

declare dso_local i32 @cred_sid(%struct.cred*) #1

declare dso_local i32 @avc_has_perm(i32, i32, i32, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
