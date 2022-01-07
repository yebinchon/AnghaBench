; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32, i32 }
%struct.dentry = type { i32 }

@TOMOYO_TYPE_LINK_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.path*, %struct.dentry*)* @tomoyo_path_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_path_link(%struct.dentry* %0, %struct.path* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca %struct.path, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %10 = load %struct.path*, %struct.path** %5, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.dentry*
  store %struct.dentry* %14, %struct.dentry** %9, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = ptrtoint %struct.dentry* %16 to i32
  store i32 %17, i32* %15, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %20 = load %struct.path*, %struct.path** %5, align 8
  %21 = getelementptr inbounds %struct.path, %struct.path* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.dentry*
  store %struct.dentry* %24, %struct.dentry** %19, align 8
  %25 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = ptrtoint %struct.dentry* %26 to i32
  store i32 %27, i32* %25, align 8
  %28 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = call i32 (...) @tomoyo_domain()
  %30 = load i32, i32* @TOMOYO_TYPE_LINK_ACL, align 4
  %31 = call i32 @tomoyo_check_2path_perm(i32 %29, i32 %30, %struct.path* %7, %struct.path* %8)
  ret i32 %31
}

declare dso_local i32 @tomoyo_check_2path_perm(i32, i32, %struct.path*, %struct.path*) #1

declare dso_local i32 @tomoyo_domain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
