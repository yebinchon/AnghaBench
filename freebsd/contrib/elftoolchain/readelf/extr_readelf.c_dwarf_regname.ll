; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dwarf_regname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dwarf_regname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dwarf_regname.rx = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"r%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.readelf*, i32)* @dwarf_regname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dwarf_regname(%struct.readelf* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.readelf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.readelf* %0, %struct.readelf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.readelf*, %struct.readelf** %4, align 8
  %8 = getelementptr inbounds %struct.readelf, %struct.readelf* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @dwarf_reg(i32 %10, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %3, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @dwarf_regname.rx, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @dwarf_regname.rx, i64 0, i64 0), i8** %3, align 8
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i8*, i8** %3, align 8
  ret i8* %20
}

declare dso_local i8* @dwarf_reg(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
