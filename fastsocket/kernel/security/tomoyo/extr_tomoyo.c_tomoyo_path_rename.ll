; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32, i32 }
%struct.dentry = type { i32 }

@TOMOYO_TYPE_RENAME_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.dentry*, %struct.path*, %struct.dentry*)* @tomoyo_path_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_path_rename(%struct.path* %0, %struct.dentry* %1, %struct.path* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.path, align 8
  %10 = alloca %struct.path, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
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
  %21 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %22 = load %struct.path*, %struct.path** %7, align 8
  %23 = getelementptr inbounds %struct.path, %struct.path* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.dentry*
  store %struct.dentry* %26, %struct.dentry** %21, align 8
  %27 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = ptrtoint %struct.dentry* %28 to i32
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = call i32 (...) @tomoyo_domain()
  %32 = load i32, i32* @TOMOYO_TYPE_RENAME_ACL, align 4
  %33 = call i32 @tomoyo_check_2path_perm(i32 %31, i32 %32, %struct.path* %9, %struct.path* %10)
  ret i32 %33
}

declare dso_local i32 @tomoyo_check_2path_perm(i32, i32, %struct.path*, %struct.path*) #1

declare dso_local i32 @tomoyo_domain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
