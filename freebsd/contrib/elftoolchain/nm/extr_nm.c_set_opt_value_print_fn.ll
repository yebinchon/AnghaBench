; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_set_opt_value_print_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_set_opt_value_print_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@sym_value_oct_print = common dso_local global i32 0, align 4
@nm_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sym_size_oct_print = common dso_local global i32 0, align 4
@sym_value_dec_print = common dso_local global i32 0, align 4
@sym_size_dec_print = common dso_local global i32 0, align 4
@sym_value_hex_print = common dso_local global i32 0, align 4
@sym_size_hex_print = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nm_opts.value_print_fn is null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_opt_value_print_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_opt_value_print_fn(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %7 [
    i32 128, label %4
    i32 130, label %5
    i32 129, label %6
  ]

4:                                                ; preds = %1
  store i32* @sym_value_oct_print, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 0), align 8
  store i32* @sym_size_oct_print, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 1), align 8
  br label %8

5:                                                ; preds = %1
  store i32* @sym_value_dec_print, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 0), align 8
  store i32* @sym_size_dec_print, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 1), align 8
  br label %8

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %1, %6
  store i32* @sym_value_hex_print, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 0), align 8
  store i32* @sym_size_hex_print, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 1), align 8
  br label %8

8:                                                ; preds = %7, %5, %4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nm_opts, i32 0, i32 0), align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi i1 [ false, %8 ], [ true, %11 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
