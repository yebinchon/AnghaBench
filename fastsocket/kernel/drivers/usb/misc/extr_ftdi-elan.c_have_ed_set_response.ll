; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_have_ed_set_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_have_ed_set_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i8*, i32, i32, i64, i32 }
%struct.u132_target = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.usb_ftdi*, %struct.u132_target*, i32, i32, i32, i8*)* @have_ed_set_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @have_ed_set_response(%struct.usb_ftdi* %0, %struct.u132_target* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_ftdi*, align 8
  %9 = alloca %struct.u132_target*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %8, align 8
  store %struct.u132_target* %1, %struct.u132_target** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = ashr i32 %15, 0
  %17 = and i32 %16, 2047
  store i32 %17, i32* %14, align 4
  %18 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %19 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %18, i32 0, i32 4
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %22 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %23, 15
  %25 = and i32 %24, 1
  %26 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %27 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 11
  %30 = and i32 %29, 15
  %31 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %32 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %77

35:                                               ; preds = %6
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %40 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38, %35
  %44 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %45 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %47 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %46, i32 0, i32 4
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %50 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %51 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %52 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @ftdi_elan_do_callback(%struct.usb_ftdi* %49, %struct.u132_target* %50, i8* %54, i32 %55)
  %57 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %58 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %60 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %59, i32 0, i32 1
  store i32 4, i32* %60, align 8
  %61 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %62 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %61, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %64 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %7, align 8
  br label %171

66:                                               ; preds = %38
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 4, %67
  %69 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %70 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %72 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %74 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %73, i32 0, i32 4
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i8*, i8** %13, align 8
  store i8* %76, i8** %7, align 8
  br label %171

77:                                               ; preds = %6
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %122

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %85 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %83, %80
  %89 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %90 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %92 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %91, i32 0, i32 4
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %95 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %96 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %97 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @ftdi_elan_do_callback(%struct.usb_ftdi* %94, %struct.u132_target* %95, i8* %99, i32 %100)
  %102 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %103 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %105 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %104, i32 0, i32 1
  store i32 4, i32* %105, align 8
  %106 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %107 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %106, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %109 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %7, align 8
  br label %171

111:                                              ; preds = %83
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 4, %112
  %114 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %115 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %117 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %116, i32 0, i32 2
  store i32 1, i32* %117, align 4
  %118 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %119 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %118, i32 0, i32 4
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load i8*, i8** %13, align 8
  store i8* %121, i8** %7, align 8
  br label %171

122:                                              ; preds = %77
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %148

125:                                              ; preds = %122
  %126 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %127 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %129 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %128, i32 0, i32 4
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %132 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %133 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %134 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @ftdi_elan_do_callback(%struct.usb_ftdi* %131, %struct.u132_target* %132, i8* %136, i32 %137)
  %139 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %140 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %142 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %141, i32 0, i32 1
  store i32 4, i32* %142, align 8
  %143 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %144 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %143, i32 0, i32 2
  store i32 0, i32* %144, align 4
  %145 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %146 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %7, align 8
  br label %171

148:                                              ; preds = %122
  %149 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %150 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %152 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %151, i32 0, i32 4
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %155 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %156 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %157 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @ftdi_elan_do_callback(%struct.usb_ftdi* %154, %struct.u132_target* %155, i8* %159, i32 %160)
  %162 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %163 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %162, i32 0, i32 3
  store i64 0, i64* %163, align 8
  %164 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %165 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %164, i32 0, i32 1
  store i32 4, i32* %165, align 8
  %166 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %167 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %166, i32 0, i32 2
  store i32 0, i32* %167, align 4
  %168 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %169 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %7, align 8
  br label %171

171:                                              ; preds = %148, %125, %111, %88, %66, %43
  %172 = load i8*, i8** %7, align 8
  ret i8* %172
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ftdi_elan_do_callback(%struct.usb_ftdi*, %struct.u132_target*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
