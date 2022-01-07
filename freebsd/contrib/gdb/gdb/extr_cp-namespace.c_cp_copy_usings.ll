; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_copy_usings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-namespace.c_cp_copy_usings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.using_direct = type { %struct.using_direct*, %struct.using_direct*, %struct.using_direct* }
%struct.obstack = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.using_direct* (%struct.using_direct*, %struct.obstack*)* @cp_copy_usings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.using_direct* @cp_copy_usings(%struct.using_direct* %0, %struct.obstack* %1) #0 {
  %3 = alloca %struct.using_direct*, align 8
  %4 = alloca %struct.using_direct*, align 8
  %5 = alloca %struct.obstack*, align 8
  %6 = alloca %struct.using_direct*, align 8
  store %struct.using_direct* %0, %struct.using_direct** %4, align 8
  store %struct.obstack* %1, %struct.obstack** %5, align 8
  %7 = load %struct.using_direct*, %struct.using_direct** %4, align 8
  %8 = icmp eq %struct.using_direct* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.using_direct* null, %struct.using_direct** %3, align 8
  br label %55

10:                                               ; preds = %2
  %11 = load %struct.obstack*, %struct.obstack** %5, align 8
  %12 = call %struct.using_direct* @obstack_alloc(%struct.obstack* %11, i32 24)
  store %struct.using_direct* %12, %struct.using_direct** %6, align 8
  %13 = load %struct.using_direct*, %struct.using_direct** %4, align 8
  %14 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %13, i32 0, i32 1
  %15 = load %struct.using_direct*, %struct.using_direct** %14, align 8
  %16 = load %struct.using_direct*, %struct.using_direct** %4, align 8
  %17 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %16, i32 0, i32 1
  %18 = load %struct.using_direct*, %struct.using_direct** %17, align 8
  %19 = call i32 @strlen(%struct.using_direct* %18)
  %20 = load %struct.obstack*, %struct.obstack** %5, align 8
  %21 = call i8* @obsavestring(%struct.using_direct* %15, i32 %19, %struct.obstack* %20)
  %22 = bitcast i8* %21 to %struct.using_direct*
  %23 = load %struct.using_direct*, %struct.using_direct** %6, align 8
  %24 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %23, i32 0, i32 1
  store %struct.using_direct* %22, %struct.using_direct** %24, align 8
  %25 = load %struct.using_direct*, %struct.using_direct** %4, align 8
  %26 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %25, i32 0, i32 0
  %27 = load %struct.using_direct*, %struct.using_direct** %26, align 8
  %28 = load %struct.using_direct*, %struct.using_direct** %4, align 8
  %29 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %28, i32 0, i32 0
  %30 = load %struct.using_direct*, %struct.using_direct** %29, align 8
  %31 = call i32 @strlen(%struct.using_direct* %30)
  %32 = load %struct.obstack*, %struct.obstack** %5, align 8
  %33 = call i8* @obsavestring(%struct.using_direct* %27, i32 %31, %struct.obstack* %32)
  %34 = bitcast i8* %33 to %struct.using_direct*
  %35 = load %struct.using_direct*, %struct.using_direct** %6, align 8
  %36 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %35, i32 0, i32 0
  store %struct.using_direct* %34, %struct.using_direct** %36, align 8
  %37 = load %struct.using_direct*, %struct.using_direct** %4, align 8
  %38 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %37, i32 0, i32 2
  %39 = load %struct.using_direct*, %struct.using_direct** %38, align 8
  %40 = load %struct.obstack*, %struct.obstack** %5, align 8
  %41 = call %struct.using_direct* @cp_copy_usings(%struct.using_direct* %39, %struct.obstack* %40)
  %42 = load %struct.using_direct*, %struct.using_direct** %6, align 8
  %43 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %42, i32 0, i32 2
  store %struct.using_direct* %41, %struct.using_direct** %43, align 8
  %44 = load %struct.using_direct*, %struct.using_direct** %4, align 8
  %45 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %44, i32 0, i32 1
  %46 = load %struct.using_direct*, %struct.using_direct** %45, align 8
  %47 = call i32 @xfree(%struct.using_direct* %46)
  %48 = load %struct.using_direct*, %struct.using_direct** %4, align 8
  %49 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %48, i32 0, i32 0
  %50 = load %struct.using_direct*, %struct.using_direct** %49, align 8
  %51 = call i32 @xfree(%struct.using_direct* %50)
  %52 = load %struct.using_direct*, %struct.using_direct** %4, align 8
  %53 = call i32 @xfree(%struct.using_direct* %52)
  %54 = load %struct.using_direct*, %struct.using_direct** %6, align 8
  store %struct.using_direct* %54, %struct.using_direct** %3, align 8
  br label %55

55:                                               ; preds = %10, %9
  %56 = load %struct.using_direct*, %struct.using_direct** %3, align 8
  ret %struct.using_direct* %56
}

declare dso_local %struct.using_direct* @obstack_alloc(%struct.obstack*, i32) #1

declare dso_local i8* @obsavestring(%struct.using_direct*, i32, %struct.obstack*) #1

declare dso_local i32 @strlen(%struct.using_direct*) #1

declare dso_local i32 @xfree(%struct.using_direct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
