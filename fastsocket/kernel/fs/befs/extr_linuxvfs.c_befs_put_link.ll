; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_put_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_linuxvfs.c_befs_put_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BEFS_LONG_SYMLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.nameidata*, i8*)* @befs_put_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @befs_put_link(%struct.dentry* %0, %struct.nameidata* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_3__* @BEFS_I(i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BEFS_LONG_SYMLINK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %21 = call i8* @nd_get_link(%struct.nameidata* %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @IS_ERR(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kfree(i8* %26)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %3
  ret void
}

declare dso_local %struct.TYPE_3__* @BEFS_I(i32) #1

declare dso_local i8* @nd_get_link(%struct.nameidata*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
