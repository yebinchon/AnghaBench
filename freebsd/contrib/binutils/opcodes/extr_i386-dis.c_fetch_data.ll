; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_fetch_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_fetch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32, %struct.disassemble_info*)*, i64 }
%struct.dis_private = type { i32, i32*, i32, i32* }

@MAX_MNEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disassemble_info*, i32*)* @fetch_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_data(%struct.disassemble_info* %0, i32* %1) #0 {
  %3 = alloca %struct.disassemble_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dis_private*, align 8
  %7 = alloca i32, align 4
  store %struct.disassemble_info* %0, %struct.disassemble_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.disassemble_info*, %struct.disassemble_info** %3, align 8
  %9 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dis_private*
  store %struct.dis_private* %11, %struct.dis_private** %6, align 8
  %12 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %13 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %17 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %20 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %18 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = add nsw i64 %15, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %30 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @MAX_MNEM_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = icmp ule i32* %28, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %2
  %37 = load %struct.disassemble_info*, %struct.disassemble_info** %3, align 8
  %38 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %37, i32 0, i32 0
  %39 = load i32 (i32, i32*, i32, %struct.disassemble_info*)*, i32 (i32, i32*, i32, %struct.disassemble_info*)** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %42 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %46 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = ptrtoint i32* %44 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = load %struct.disassemble_info*, %struct.disassemble_info** %3, align 8
  %54 = call i32 %39(i32 %40, i32* %43, i32 %52, %struct.disassemble_info* %53)
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %61 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %64 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.disassemble_info*, %struct.disassemble_info** %3, align 8
  %69 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %68, i32 0, i32 1
  %70 = load i32 (i32, i32, %struct.disassemble_info*)*, i32 (i32, i32, %struct.disassemble_info*)** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.disassemble_info*, %struct.disassemble_info** %3, align 8
  %74 = call i32 %70(i32 %71, i32 %72, %struct.disassemble_info* %73)
  br label %75

75:                                               ; preds = %67, %59
  %76 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %77 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @longjmp(i32 %78, i32 1)
  br label %84

80:                                               ; preds = %56
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.dis_private*, %struct.dis_private** %6, align 8
  %83 = getelementptr inbounds %struct.dis_private, %struct.dis_private* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  br label %84

84:                                               ; preds = %80, %75
  ret i32 1
}

declare dso_local i32 @longjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
