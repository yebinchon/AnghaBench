; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_calc_max_reserv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_inode.c_calc_max_reserv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gfs2_sbd = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_inode*, i32, i32*, i32*, i32*)* @calc_max_reserv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_max_reserv(%struct.gfs2_inode* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.gfs2_sbd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 2
  %17 = call %struct.gfs2_sbd* @GFS2_SB(i32* %16)
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %11, align 8
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %22, %27
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %5
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %35 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %5
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi i32 [ %38, %33 ], [ 0, %39 ]
  %42 = add i32 %28, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = mul nsw i32 3, %47
  %49 = sub i32 %43, %48
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %57, %40
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %54 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ugt i32 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %60 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DIV_ROUND_UP(i32 %58, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub i32 %64, %63
  store i32 %65, i32* %14, align 4
  br label %51

66:                                               ; preds = %51
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ule i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %99

72:                                               ; preds = %66
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub i32 %75, %76
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sub nsw i32 %79, 3
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %11, align 8
  %82 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %80, %84
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %72
  %92 = load i32, i32* %7, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %94, i32 %95, i32* %96, i32* %97)
  br label %99

99:                                               ; preds = %71, %91, %72
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
