; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_record_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_record_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subfile = type { i32 }
%struct.objfile = type { i32 }
%union.sltentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@SLT_NORMAL = common dso_local global i64 0, align 8
@SLT_EXIT = common dso_local global i64 0, align 8
@SLT_NORMAL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.subfile*, i64, i64, %struct.objfile*, i64)* @hpread_record_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpread_record_lines(%struct.subfile* %0, i64 %1, i64 %2, %struct.objfile* %3, i64 %4) #0 {
  %6 = alloca %struct.subfile*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.objfile*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.sltentry*, align 8
  store %struct.subfile* %0, %struct.subfile** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.objfile* %3, %struct.objfile** %9, align 8
  store i64 %4, i64* %10, align 8
  br label %12

12:                                               ; preds = %67, %5
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.objfile*, %struct.objfile** %9, align 8
  %19 = call %union.sltentry* @hpread_get_slt(i64 %17, %struct.objfile* %18)
  store %union.sltentry* %19, %union.sltentry** %11, align 8
  %20 = load %union.sltentry*, %union.sltentry** %11, align 8
  %21 = bitcast %union.sltentry* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SLT_NORMAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = load %union.sltentry*, %union.sltentry** %11, align 8
  %28 = bitcast %union.sltentry* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SLT_EXIT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26, %16
  %34 = load %struct.subfile*, %struct.subfile** %6, align 8
  %35 = load %union.sltentry*, %union.sltentry** %11, align 8
  %36 = bitcast %union.sltentry* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %union.sltentry*, %union.sltentry** %11, align 8
  %40 = bitcast %union.sltentry* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @record_line(%struct.subfile* %34, i32 %38, i64 %44)
  br label %67

46:                                               ; preds = %26
  %47 = load %union.sltentry*, %union.sltentry** %11, align 8
  %48 = bitcast %union.sltentry* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SLT_NORMAL_OFFSET, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.subfile*, %struct.subfile** %6, align 8
  %55 = load %union.sltentry*, %union.sltentry** %11, align 8
  %56 = bitcast %union.sltentry* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %union.sltentry*, %union.sltentry** %11, align 8
  %60 = bitcast %union.sltentry* %59 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @record_line(%struct.subfile* %54, i32 %58, i64 %64)
  br label %66

66:                                               ; preds = %53, %46
  br label %67

67:                                               ; preds = %66, %33
  %68 = load i64, i64* %7, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %12

70:                                               ; preds = %12
  %71 = load i64, i64* %8, align 8
  ret i64 %71
}

declare dso_local %union.sltentry* @hpread_get_slt(i64, %struct.objfile*) #1

declare dso_local i32 @record_line(%struct.subfile*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
