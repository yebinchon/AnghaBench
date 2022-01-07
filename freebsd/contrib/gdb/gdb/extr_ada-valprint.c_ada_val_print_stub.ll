; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_val_print_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_val_print_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ada_val_print_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ada_val_print_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ada_val_print_stub(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ada_val_print_args*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ada_val_print_args*
  store %struct.ada_val_print_args* %5, %struct.ada_val_print_args** %3, align 8
  %6 = load %struct.ada_val_print_args*, %struct.ada_val_print_args** %3, align 8
  %7 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ada_val_print_args*, %struct.ada_val_print_args** %3, align 8
  %10 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ada_val_print_args*, %struct.ada_val_print_args** %3, align 8
  %13 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ada_val_print_args*, %struct.ada_val_print_args** %3, align 8
  %16 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ada_val_print_args*, %struct.ada_val_print_args** %3, align 8
  %19 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ada_val_print_args*, %struct.ada_val_print_args** %3, align 8
  %22 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ada_val_print_args*, %struct.ada_val_print_args** %3, align 8
  %25 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ada_val_print_args*, %struct.ada_val_print_args** %3, align 8
  %28 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ada_val_print_args*, %struct.ada_val_print_args** %3, align 8
  %31 = getelementptr inbounds %struct.ada_val_print_args, %struct.ada_val_print_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ada_val_print_1(i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  ret i32 %33
}

declare dso_local i32 @ada_val_print_1(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
