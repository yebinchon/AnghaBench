; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_setup_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/blackfin/extr_bf5xx-sport.c_setup_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmasg = type { i64, i32, i32, i64, i32, i64, %struct.dmasg* }

@.str = private unnamed_addr constant [93 x i8] c"setup desc: desc0=%p, next0=%p, desc1=%p,next1=%p\0Ax_count=%x,y_count=%x,addr=0x%lx,cfs=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmasg*, i8*, i32, i64, i32, i32, i32, i64)* @setup_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_desc(%struct.dmasg* %0, i8* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.dmasg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.dmasg* %0, %struct.dmasg** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %75, %8
  %19 = load i32, i32* %17, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %18
  %23 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %24 = load i32, i32* %17, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %23, i64 %26
  %28 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %29 = load i32, i32* %17, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %28, i64 %30
  %32 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %31, i32 0, i32 6
  store %struct.dmasg* %27, %struct.dmasg** %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %12, align 8
  %38 = mul i64 %36, %37
  %39 = add i64 %34, %38
  %40 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %40, i64 %42
  %44 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %43, i32 0, i32 0
  store i64 %39, i64* %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %46, i64 %48
  %50 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %49, i32 0, i32 1
  store i32 %45, i32* %50, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %52, i64 %54
  %56 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %55, i32 0, i32 2
  store i32 %51, i32* %56, align 4
  %57 = load i64, i64* %16, align 8
  %58 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %58, i64 %60
  %62 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %61, i32 0, i32 3
  store i64 %57, i64* %62, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %64, i64 %66
  %68 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %67, i32 0, i32 4
  store i32 %63, i32* %68, align 8
  %69 = load i64, i64* %16, align 8
  %70 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %70, i64 %72
  %74 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %73, i32 0, i32 5
  store i64 %69, i64* %74, align 8
  br label %75

75:                                               ; preds = %22
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %18

78:                                               ; preds = %18
  %79 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %80 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %80, i64 %83
  %85 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %84, i32 0, i32 6
  store %struct.dmasg* %79, %struct.dmasg** %85, align 8
  %86 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %87 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %88 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %87, i64 0
  %89 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %88, i32 0, i32 6
  %90 = load %struct.dmasg*, %struct.dmasg** %89, align 8
  %91 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %92 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %91, i64 1
  %93 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %94 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %93, i64 1
  %95 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %94, i32 0, i32 6
  %96 = load %struct.dmasg*, %struct.dmasg** %95, align 8
  %97 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %98 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %97, i64 0
  %99 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %102 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %101, i64 0
  %103 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %106 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %105, i64 0
  %107 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.dmasg*, %struct.dmasg** %9, align 8
  %110 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %109, i64 0
  %111 = getelementptr inbounds %struct.dmasg, %struct.dmasg* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @pr_debug(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), %struct.dmasg* %86, %struct.dmasg* %90, %struct.dmasg* %92, %struct.dmasg* %96, i32 %100, i32 %104, i64 %108, i32 %112)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.dmasg*, %struct.dmasg*, %struct.dmasg*, %struct.dmasg*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
