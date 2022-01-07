; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_serial2002.c_serial_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_serial2002.c_serial_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.serial_data = type { i64, i32, i32 }

@is_digital = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i64, i64)* @serial_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_write(%struct.file* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.serial_data, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8, align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  %9 = bitcast %struct.serial_data* %4 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %2, i64* %11, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @is_digital, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 5
  %20 = and i32 %19, 32
  %21 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 31
  %24 = or i32 %20, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %6, align 1
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = call i32 @tty_write(%struct.file* %26, i8* %6, i32 1)
  br label %126

28:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %29 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp sge i64 %31, 1073741824
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 30
  %37 = and i32 %36, 3
  %38 = or i32 128, %37
  %39 = trunc i32 %38 to i8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 %41
  store i8 %39, i8* %42, align 1
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %33, %28
  %46 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp sge i64 %48, 8388608
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 23
  %54 = and i32 %53, 127
  %55 = or i32 128, %54
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 %58
  store i8 %56, i8* %59, align 1
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %50, %45
  %63 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp sge i64 %65, 65536
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 16
  %71 = and i32 %70, 127
  %72 = or i32 128, %71
  %73 = trunc i32 %72 to i8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 %75
  store i8 %73, i8* %76, align 1
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %67, %62
  %80 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = icmp sge i64 %82, 512
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 9
  %88 = and i32 %87, 127
  %89 = or i32 128, %88
  %90 = trunc i32 %89 to i8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 %92
  store i8 %90, i8* %93, align 1
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %84, %79
  %97 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = ashr i32 %98, 2
  %100 = and i32 %99, 127
  %101 = or i32 128, %100
  %102 = trunc i32 %101 to i8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 %104
  store i8 %102, i8* %105, align 1
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = shl i32 %109, 5
  %111 = and i32 %110, 96
  %112 = getelementptr inbounds %struct.serial_data, %struct.serial_data* %4, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 31
  %115 = or i32 %111, %114
  %116 = trunc i32 %115 to i8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 %118
  store i8 %116, i8* %119, align 1
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  %122 = load %struct.file*, %struct.file** %5, align 8
  %123 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @tty_write(%struct.file* %122, i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %96, %16
  ret void
}

declare dso_local i32 @tty_write(%struct.file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
