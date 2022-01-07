; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-dis.c_aux_reg_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arc-dis.c_aux_reg_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcDisState = type { i8* (i32, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.arcDisState*, i32)* @aux_reg_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @aux_reg_name(%struct.arcDisState* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.arcDisState*, align 8
  %5 = alloca i32, align 4
  store %struct.arcDisState* %0, %struct.arcDisState** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.arcDisState*, %struct.arcDisState** %4, align 8
  %7 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %6, i32 0, i32 0
  %8 = load i8* (i32, i32)*, i8* (i32, i32)** %7, align 8
  %9 = icmp ne i8* (i32, i32)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.arcDisState*, %struct.arcDisState** %4, align 8
  %12 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %11, i32 0, i32 0
  %13 = load i8* (i32, i32)*, i8* (i32, i32)** %12, align 8
  %14 = load %struct.arcDisState*, %struct.arcDisState** %4, align 8
  %15 = getelementptr inbounds %struct.arcDisState, %struct.arcDisState* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i8* %13(i32 %16, i32 %17)
  store i8* %18, i8** %3, align 8
  br label %20

19:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
