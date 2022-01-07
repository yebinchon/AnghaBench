; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_setattr_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_gfs2_setattr_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_setattr_size(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @S_ISREG(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @inode_newsize_ok(%struct.inode* %16, i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = call i32 @get_write_access(%struct.inode* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %23
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i32 @GFS2_I(%struct.inode* %31)
  %33 = call i32 @gfs2_rs_alloc(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %53

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @do_grow(%struct.inode* %45, i64 %46)
  store i32 %47, i32* %6, align 4
  br label %53

48:                                               ; preds = %37
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @do_shrink(%struct.inode* %49, i64 %50, i64 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %44, %36
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call i32 @put_write_access(%struct.inode* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %28, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @get_write_access(%struct.inode*) #1

declare dso_local i32 @gfs2_rs_alloc(i32) #1

declare dso_local i32 @GFS2_I(%struct.inode*) #1

declare dso_local i32 @do_grow(%struct.inode*, i64) #1

declare dso_local i32 @do_shrink(%struct.inode*, i64, i64) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
