; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bout.c_b_out_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.internal_exec = type { i32 }
%struct.external_exec = type { i32 }

@EXEC_BYTES_SIZE = common dso_local global i64 0, align 8
@bfd_error_system_call = common dso_local global i64 0, align 8
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@b_out_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @b_out_object_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @b_out_object_p(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.internal_exec, align 4
  %5 = alloca %struct.external_exec, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i64, i64* @EXEC_BYTES_SIZE, align 8
  store i64 %7, i64* %6, align 8
  %8 = bitcast %struct.external_exec* %5 to i8*
  %9 = load i64, i64* %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @bfd_bread(i8* %8, i64 %9, i32* %10)
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = call i64 (...) @bfd_get_error()
  %16 = load i64, i64* @bfd_error_system_call, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @bfd_error_wrong_format, align 4
  %20 = call i32 @bfd_set_error(i32 %19)
  br label %21

21:                                               ; preds = %18, %14
  store i32* null, i32** %2, align 8
  br label %41

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds %struct.external_exec, %struct.external_exec* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @H_GET_32(i32* %23, i32 %25)
  %27 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %4, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.internal_exec, %struct.internal_exec* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @N_BADMAG(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @bfd_error_wrong_format, align 4
  %34 = call i32 @bfd_set_error(i32 %33)
  store i32* null, i32** %2, align 8
  br label %41

35:                                               ; preds = %22
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @bout_swap_exec_header_in(i32* %36, %struct.external_exec* %5, %struct.internal_exec* %4)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @b_out_callback, align 4
  %40 = call i32* @aout_32_some_aout_object_p(i32* %38, %struct.internal_exec* %4, i32 %39)
  store i32* %40, i32** %2, align 8
  br label %41

41:                                               ; preds = %35, %32, %21
  %42 = load i32*, i32** %2, align 8
  ret i32* %42
}

declare dso_local i64 @bfd_bread(i8*, i64, i32*) #1

declare dso_local i64 @bfd_get_error(...) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @H_GET_32(i32*, i32) #1

declare dso_local i64 @N_BADMAG(i32) #1

declare dso_local i32 @bout_swap_exec_header_in(i32*, %struct.external_exec*, %struct.internal_exec*) #1

declare dso_local i32* @aout_32_some_aout_object_p(i32*, %struct.internal_exec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
