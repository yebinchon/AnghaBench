; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_get_exe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_common.c_tomoyo_get_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.TYPE_3__*, %struct.vm_area_struct* }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@VM_EXECUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @tomoyo_get_exe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tomoyo_get_exe() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  store %struct.mm_struct* %7, %struct.mm_struct** %2, align 8
  store i8* null, i8** %4, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %9 = icmp ne %struct.mm_struct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %49

11:                                               ; preds = %0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 1
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  store %struct.vm_area_struct* %17, %struct.vm_area_struct** %3, align 8
  br label %18

18:                                               ; preds = %40, %11
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %20 = icmp ne %struct.vm_area_struct* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VM_EXECUTABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i8* @tomoyo_realpath_from_path(i32* %37)
  store i8* %38, i8** %4, align 8
  br label %44

39:                                               ; preds = %28, %21
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 2
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %42, align 8
  store %struct.vm_area_struct* %43, %struct.vm_area_struct** %3, align 8
  br label %18

44:                                               ; preds = %33, %18
  %45 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %45, i32 0, i32 0
  %47 = call i32 @up_read(i32* %46)
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %1, align 8
  br label %49

49:                                               ; preds = %44, %10
  %50 = load i8*, i8** %1, align 8
  ret i8* %50
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i8* @tomoyo_realpath_from_path(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
