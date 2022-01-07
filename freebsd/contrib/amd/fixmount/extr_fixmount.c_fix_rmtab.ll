; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/fixmount/extr_fixmount.c_fix_rmtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/fixmount/extr_fixmount.c_fix_rmtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__* }
%struct.hostent = type { i32 }
%struct.in_addr = type { i32 }

@INADDR_NONE = common dso_local global i32 0, align 4
@thishost = common dso_local global i32 0, align 4
@thisaddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_rmtab(i32* %0, i8* %1, %struct.TYPE_4__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca %struct.in_addr, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.hostent* @gethostbyname(i8* %14)
  store %struct.hostent* %15, %struct.hostent** %12, align 8
  %16 = icmp ne %struct.hostent* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.hostent*, %struct.hostent** %12, align 8
  %19 = getelementptr inbounds %struct.hostent, %struct.hostent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(%struct.in_addr* %13, i32 %20, i32 4)
  br label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @INADDR_NONE, align 4
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %11, align 8
  br label %27

27:                                               ; preds = %58, %25
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @thishost, align 4
  %35 = load i32, i32* @thisaddr, align 4
  %36 = call i64 @is_same_host(i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @fixmount_check_mount(i8* %42, i32 %47, i32 %45)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %41, %38
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @remove_mount(i32* %51, i8* %52, %struct.TYPE_4__* %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %41
  br label %57

57:                                               ; preds = %56, %30
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %11, align 8
  br label %27

62:                                               ; preds = %27
  ret void
}

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @memcpy(%struct.in_addr*, i32, i32) #1

declare dso_local i64 @is_same_host(i32, i32, i32) #1

declare dso_local i32 @fixmount_check_mount(i8*, i32, i32) #1

declare dso_local i32 @remove_mount(i32*, i8*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
