; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_stat.c_generic_fillattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_stat.c_generic_fillattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_fillattr(%struct.inode* %0, %struct.kstat* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.kstat*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.kstat* %1, %struct.kstat** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 11
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kstat*, %struct.kstat** %4, align 8
  %11 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.kstat*, %struct.kstat** %4, align 8
  %16 = getelementptr inbounds %struct.kstat, %struct.kstat* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kstat*, %struct.kstat** %4, align 8
  %21 = getelementptr inbounds %struct.kstat, %struct.kstat* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.kstat*, %struct.kstat** %4, align 8
  %26 = getelementptr inbounds %struct.kstat, %struct.kstat* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kstat*, %struct.kstat** %4, align 8
  %31 = getelementptr inbounds %struct.kstat, %struct.kstat* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.kstat*, %struct.kstat** %4, align 8
  %36 = getelementptr inbounds %struct.kstat, %struct.kstat* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.kstat*, %struct.kstat** %4, align 8
  %41 = getelementptr inbounds %struct.kstat, %struct.kstat* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.kstat*, %struct.kstat** %4, align 8
  %46 = getelementptr inbounds %struct.kstat, %struct.kstat* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kstat*, %struct.kstat** %4, align 8
  %51 = getelementptr inbounds %struct.kstat, %struct.kstat* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.kstat*, %struct.kstat** %4, align 8
  %56 = getelementptr inbounds %struct.kstat, %struct.kstat* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call i32 @i_size_read(%struct.inode* %57)
  %59 = load %struct.kstat*, %struct.kstat** %4, align 8
  %60 = getelementptr inbounds %struct.kstat, %struct.kstat* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kstat*, %struct.kstat** %4, align 8
  %65 = getelementptr inbounds %struct.kstat, %struct.kstat* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 1, %68
  %70 = load %struct.kstat*, %struct.kstat** %4, align 8
  %71 = getelementptr inbounds %struct.kstat, %struct.kstat* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
