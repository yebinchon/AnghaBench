; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_rws_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_rws_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_write_state = type { i32, i32, i32, i32, i32 }
%struct.reg_flags = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reg_write_state*, i32, i64, i32, i32)* @rws_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rws_update(%struct.reg_write_state* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.reg_flags, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca %struct.reg_write_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %2, i64* %11, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %3, i32* %12, align 4
  %13 = bitcast %struct.reg_flags* %6 to i8*
  %14 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  store %struct.reg_write_state* %0, %struct.reg_write_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load %struct.reg_write_state*, %struct.reg_write_state** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %18, i64 %20
  %22 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %31

25:                                               ; preds = %5
  %26 = load %struct.reg_write_state*, %struct.reg_write_state** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %26, i64 %28
  %30 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %29, i32 0, i32 0
  store i32 2, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %17
  %32 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.reg_write_state*, %struct.reg_write_state** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %34, i64 %36
  %38 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %33
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.reg_write_state*, %struct.reg_write_state** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %43, i64 %45
  %47 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %46, i32 0, i32 3
  store i32 %42, i32* %47, align 4
  %48 = getelementptr inbounds %struct.reg_flags, %struct.reg_flags* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.reg_write_state*, %struct.reg_write_state** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %50, i64 %52
  %54 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %53, i32 0, i32 2
  store i32 %49, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.reg_write_state*, %struct.reg_write_state** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %56, i64 %58
  %60 = getelementptr inbounds %struct.reg_write_state, %struct.reg_write_state* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
