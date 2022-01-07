; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_find_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_find_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.cifs_fattr = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@S_IFMT = common dso_local global i32 0, align 4
@CIFS_FATTR_INO_COLLISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @cifs_find_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_find_inode(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cifs_fattr*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.cifs_fattr*
  store %struct.cifs_fattr* %8, %struct.cifs_fattr** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.TYPE_2__* @CIFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %14 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S_IFMT, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %25 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @S_IFMT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %49

31:                                               ; preds = %18
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @CIFS_FATTR_INO_COLLISION, align 4
  %44 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %45 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37, %31
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %30, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_2__* @CIFS_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
