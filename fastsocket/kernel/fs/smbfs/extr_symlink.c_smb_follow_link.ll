; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_symlink.c_smb_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_symlink.c_smb_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"followlink of %s/%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @smb_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @smb_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %7 = call i8* (...) @__getname()
  store i8* %7, i8** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = call i32 @DENTRY_PATH(%struct.dentry* %8)
  %10 = call i32 @DEBUG1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i8* @ERR_PTR(i32 %15)
  store i8* %16, i8** %5, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %3, align 8
  %19 = call i32 @server_from_dentry(%struct.dentry* %18)
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* @PATH_MAX, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @smb_proc_read_link(i32 %19, %struct.dentry* %20, i8* %21, i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @__putname(i8* %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @ERR_PTR(i32 %30)
  store i8* %31, i8** %5, align 8
  br label %37

32:                                               ; preds = %17
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %13
  %39 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @nd_set_link(%struct.nameidata* %39, i8* %40)
  ret i8* null
}

declare dso_local i8* @__getname(...) #1

declare dso_local i32 @DEBUG1(i8*, i32) #1

declare dso_local i32 @DENTRY_PATH(%struct.dentry*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @smb_proc_read_link(i32, %struct.dentry*, i8*, i64) #1

declare dso_local i32 @server_from_dentry(%struct.dentry*) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i32 @nd_set_link(%struct.nameidata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
