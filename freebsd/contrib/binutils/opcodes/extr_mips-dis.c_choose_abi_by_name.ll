; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_choose_abi_by_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mips-dis.c_choose_abi_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_abi_choice = type { i32 }

@mips_abi_choices = common dso_local global %struct.mips_abi_choice* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_abi_choice* (i8*, i32)* @choose_abi_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_abi_choice* @choose_abi_by_name(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mips_abi_choice*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store %struct.mips_abi_choice* null, %struct.mips_abi_choice** %5, align 8
  br label %7

7:                                                ; preds = %44, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** @mips_abi_choices, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.mips_abi_choice* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %5, align 8
  %14 = icmp eq %struct.mips_abi_choice* %13, null
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i1 [ false, %7 ], [ %14, %12 ]
  br i1 %16, label %17, label %47

17:                                               ; preds = %15
  %18 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** @mips_abi_choices, align 8
  %19 = load i32, i32* %6, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %18, i64 %20
  %22 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @strncmp(i32 %23, i8* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %17
  %29 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** @mips_abi_choices, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %29, i64 %31
  %33 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strlen(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** @mips_abi_choices, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %39, i64 %41
  store %struct.mips_abi_choice* %42, %struct.mips_abi_choice** %5, align 8
  br label %43

43:                                               ; preds = %38, %28, %17
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %7

47:                                               ; preds = %15
  %48 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %5, align 8
  ret %struct.mips_abi_choice* %48
}

declare dso_local i32 @ARRAY_SIZE(%struct.mips_abi_choice*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
