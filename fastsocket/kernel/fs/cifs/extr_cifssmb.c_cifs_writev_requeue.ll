; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_cifs_writev_requeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_cifs_writev_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_writedata = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_writedata*)* @cifs_writev_requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_writev_requeue(%struct.cifs_writedata* %0) #0 {
  %2 = alloca %struct.cifs_writedata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  store %struct.cifs_writedata* %0, %struct.cifs_writedata** %2, align 8
  %6 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %7 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %5, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %16 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %21 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lock_page(i32 %26)
  %28 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %29 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clear_page_dirty_for_io(i32 %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %13

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %43, %39
  %41 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %42 = call i32 @cifs_async_writev(%struct.cifs_writedata* %41)
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @EAGAIN, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %40, label %48

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %92, %48
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %52 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %49
  %56 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %57 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @unlock_page(i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %91

66:                                               ; preds = %55
  %67 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %68 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SetPageError(i32 %73)
  %75 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %76 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @end_page_writeback(i32 %81)
  %83 = load %struct.cifs_writedata*, %struct.cifs_writedata** %2, align 8
  %84 = getelementptr inbounds %struct.cifs_writedata, %struct.cifs_writedata* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @page_cache_release(i32 %89)
  br label %91

91:                                               ; preds = %66, %55
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %49

95:                                               ; preds = %49
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @mapping_set_error(i32 %98, i32 %99)
  ret void
}

declare dso_local i32 @lock_page(i32) #1

declare dso_local i32 @clear_page_dirty_for_io(i32) #1

declare dso_local i32 @cifs_async_writev(%struct.cifs_writedata*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @SetPageError(i32) #1

declare dso_local i32 @end_page_writeback(i32) #1

declare dso_local i32 @page_cache_release(i32) #1

declare dso_local i32 @mapping_set_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
