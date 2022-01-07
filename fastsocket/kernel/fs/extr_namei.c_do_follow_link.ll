; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_do_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_do_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.path = type { i32 }
%struct.nameidata = type { i64, i32 }

@ELOOP = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_NESTED_LINKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.nameidata*)* @do_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_follow_link(%struct.path* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %7 = load i32, i32* @ELOOP, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAX_NESTED_LINKS, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 40
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %63

21:                                               ; preds = %15
  %22 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %23 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MAX_NESTED_LINKS, align 8
  %26 = icmp sge i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = call i32 (...) @cond_resched()
  %30 = load %struct.path*, %struct.path** %4, align 8
  %31 = getelementptr inbounds %struct.path, %struct.path* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %34 = call i32 @security_inode_follow_link(i32 %32, %struct.nameidata* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %63

38:                                               ; preds = %21
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.path*, %struct.path** %4, align 8
  %52 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %53 = call i32 @__do_follow_link(%struct.path* %51, %struct.nameidata* %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %59 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %59, align 8
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %71

63:                                               ; preds = %37, %20, %14
  %64 = load %struct.path*, %struct.path** %4, align 8
  %65 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %66 = call i32 @path_put_conditional(%struct.path* %64, %struct.nameidata* %65)
  %67 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %67, i32 0, i32 1
  %69 = call i32 @path_put(i32* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %63, %38
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @security_inode_follow_link(i32, %struct.nameidata*) #1

declare dso_local i32 @__do_follow_link(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @path_put_conditional(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @path_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
