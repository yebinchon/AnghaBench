; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_ia64_find_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_ia64_find_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_opcode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ia64_opcode* @ia64_find_opcode(i8* %0) #0 {
  %2 = alloca %struct.ia64_opcode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [129 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = icmp sgt i32 %9, 128
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.ia64_opcode* null, %struct.ia64_opcode** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %5, align 8
  %14 = getelementptr inbounds [129 x i8], [129 x i8]* %4, i64 0, i64 0
  %15 = call i32 @get_opc_prefix(i8** %5, i8* %14)
  %16 = getelementptr inbounds [129 x i8], [129 x i8]* %4, i64 0, i64 0
  %17 = call signext i16 @find_string_ent(i8* %16)
  store i16 %17, i16* %7, align 2
  %18 = load i16, i16* %7, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store %struct.ia64_opcode* null, %struct.ia64_opcode** %2, align 8
  br label %33

22:                                               ; preds = %12
  %23 = load i16, i16* %7, align 2
  %24 = call signext i16 @find_main_ent(i16 signext %23)
  store i16 %24, i16* %6, align 2
  %25 = load i16, i16* %6, align 2
  %26 = sext i16 %25 to i32
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.ia64_opcode* null, %struct.ia64_opcode** %2, align 8
  br label %33

29:                                               ; preds = %22
  %30 = load i8*, i8** %3, align 8
  %31 = load i16, i16* %6, align 2
  %32 = call %struct.ia64_opcode* @ia64_find_matching_opcode(i8* %30, i16 signext %31)
  store %struct.ia64_opcode* %32, %struct.ia64_opcode** %2, align 8
  br label %33

33:                                               ; preds = %29, %28, %21, %11
  %34 = load %struct.ia64_opcode*, %struct.ia64_opcode** %2, align 8
  ret %struct.ia64_opcode* %34
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_opc_prefix(i8**, i8*) #1

declare dso_local signext i16 @find_string_ent(i8*) #1

declare dso_local signext i16 @find_main_ent(i16 signext) #1

declare dso_local %struct.ia64_opcode* @ia64_find_matching_opcode(i8*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
