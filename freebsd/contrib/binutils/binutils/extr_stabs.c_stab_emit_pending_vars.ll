; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_emit_pending_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_emit_pending_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { %struct.stab_pending_var* }
%struct.stab_pending_var = type { %struct.stab_pending_var*, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stab_handle*)* @stab_emit_pending_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_emit_pending_vars(i8* %0, %struct.stab_handle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stab_handle*, align 8
  %6 = alloca %struct.stab_pending_var*, align 8
  %7 = alloca %struct.stab_pending_var*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %5, align 8
  %8 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %9 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %8, i32 0, i32 0
  %10 = load %struct.stab_pending_var*, %struct.stab_pending_var** %9, align 8
  store %struct.stab_pending_var* %10, %struct.stab_pending_var** %6, align 8
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %struct.stab_pending_var*, %struct.stab_pending_var** %6, align 8
  %13 = icmp ne %struct.stab_pending_var* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.stab_pending_var*, %struct.stab_pending_var** %6, align 8
  %17 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stab_pending_var*, %struct.stab_pending_var** %6, align 8
  %20 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.stab_pending_var*, %struct.stab_pending_var** %6, align 8
  %23 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.stab_pending_var*, %struct.stab_pending_var** %6, align 8
  %26 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @debug_record_variable(i8* %15, i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %14
  %33 = load %struct.stab_pending_var*, %struct.stab_pending_var** %6, align 8
  %34 = getelementptr inbounds %struct.stab_pending_var, %struct.stab_pending_var* %33, i32 0, i32 0
  %35 = load %struct.stab_pending_var*, %struct.stab_pending_var** %34, align 8
  store %struct.stab_pending_var* %35, %struct.stab_pending_var** %7, align 8
  %36 = load %struct.stab_pending_var*, %struct.stab_pending_var** %6, align 8
  %37 = call i32 @free(%struct.stab_pending_var* %36)
  %38 = load %struct.stab_pending_var*, %struct.stab_pending_var** %7, align 8
  store %struct.stab_pending_var* %38, %struct.stab_pending_var** %6, align 8
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.stab_handle*, %struct.stab_handle** %5, align 8
  %41 = getelementptr inbounds %struct.stab_handle, %struct.stab_handle* %40, i32 0, i32 0
  store %struct.stab_pending_var* null, %struct.stab_pending_var** %41, align 8
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @debug_record_variable(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.stab_pending_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
