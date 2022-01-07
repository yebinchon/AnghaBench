; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_s390-dis.c_s390_extract_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_s390-dis.c_s390_extract_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_operand = type { i32, i32, i32 }

@S390_OPERAND_SIGNED = common dso_local global i32 0, align 4
@S390_OPERAND_PCREL = common dso_local global i32 0, align 4
@S390_OPERAND_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.s390_operand*)* @s390_extract_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_extract_operand(i8* %0, %struct.s390_operand* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.s390_operand*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.s390_operand* %1, %struct.s390_operand** %4, align 8
  %7 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %8 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %9, 8
  %11 = load i8*, i8** %3, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %3, align 8
  %14 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %15 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 7
  %18 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %19 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %33, %2
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 8
  store i32 %24, i32* %5, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 8
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %22, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 0, %37
  %39 = load i32, i32* %5, align 4
  %40 = lshr i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %42 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  %46 = shl i32 %45, 1
  %47 = sub i32 %46, 1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %51 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 20
  br i1 %53, label %54, label %67

54:                                               ; preds = %36
  %55 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %56 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 20
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 255
  %62 = shl i32 %61, 12
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 1048320
  %65 = lshr i32 %64, 8
  %66 = or i32 %62, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %59, %54, %36
  %68 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %69 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @S390_OPERAND_SIGNED, align 4
  %72 = load i32, i32* @S390_OPERAND_PCREL, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %67
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %79 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = shl i32 1, %81
  %83 = and i32 %77, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %87 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = shl i32 -1, %89
  %91 = shl i32 %90, 1
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %85, %76, %67
  %95 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %96 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @S390_OPERAND_PCREL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %5, align 4
  %103 = shl i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %94
  %105 = load %struct.s390_operand*, %struct.s390_operand** %4, align 8
  %106 = getelementptr inbounds %struct.s390_operand, %struct.s390_operand* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @S390_OPERAND_LENGTH, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* %5, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
