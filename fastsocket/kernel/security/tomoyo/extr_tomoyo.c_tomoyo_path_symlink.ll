; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32, i32 }
%struct.dentry = type { i32 }

@TOMOYO_TYPE_SYMLINK_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.dentry*, i8*)* @tomoyo_path_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_path_symlink(%struct.path* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.path, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %9 = load %struct.path*, %struct.path** %4, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.dentry*
  store %struct.dentry* %13, %struct.dentry** %8, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 1
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = ptrtoint %struct.dentry* %15 to i32
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = call i32 (...) @tomoyo_domain()
  %19 = load i32, i32* @TOMOYO_TYPE_SYMLINK_ACL, align 4
  %20 = call i32 @tomoyo_check_1path_perm(i32 %18, i32 %19, %struct.path* %7)
  ret i32 %20
}

declare dso_local i32 @tomoyo_check_1path_perm(i32, i32, %struct.path*) #1

declare dso_local i32 @tomoyo_domain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
