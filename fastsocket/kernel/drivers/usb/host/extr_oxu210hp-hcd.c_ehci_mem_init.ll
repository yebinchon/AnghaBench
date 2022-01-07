; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_mem_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_ehci_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i32*, i8**, i32, %struct.TYPE_2__*, i32, i64*, i8*, i64*, i64* }
%struct.TYPE_2__ = type { i8** }

@EHCI_LIST_END = common dso_local global i8* null, align 8
@QHEAD_NUM = common dso_local global i32 0, align 4
@QTD_NUM = common dso_local global i32 0, align 4
@MURB_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"couldn't init memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*, i32)* @ehci_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_mem_init(%struct.oxu_hcd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.oxu_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %23, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load i8*, i8** @EHCI_LIST_END, align 8
  %15 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  store i8* %14, i8** %22, align 8
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %7

26:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @QHEAD_NUM, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %33 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %32, i32 0, i32 9
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %27

41:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @QTD_NUM, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %48 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %47, i32 0, i32 8
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %42

56:                                               ; preds = %42
  %57 = load i32, i32* @MURB_NUM, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i8* @kcalloc(i32 %57, i32 4, i32 %58)
  %60 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %61 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %63 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %62, i32 0, i32 7
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %138

67:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %79, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @MURB_NUM, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %74 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %73, i32 0, i32 6
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %68

82:                                               ; preds = %68
  %83 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %84 = call i32 @oxu_qh_alloc(%struct.oxu_hcd* %83)
  %85 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %86 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %88 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %138

92:                                               ; preds = %82
  %93 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %94 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %93, i32 0, i32 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = bitcast i8*** %96 to i8**
  %98 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %99 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %98, i32 0, i32 2
  store i8** %97, i8*** %99, align 8
  %100 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %101 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %100, i32 0, i32 2
  %102 = load i8**, i8*** %101, align 8
  %103 = call i32 @virt_to_phys(i8** %102)
  %104 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %105 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %120, %92
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %109 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = load i8*, i8** @EHCI_LIST_END, align 8
  %114 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %115 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %114, i32 0, i32 2
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %113, i8** %119, align 8
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %106

123:                                              ; preds = %106
  %124 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %125 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i8* @kcalloc(i32 %126, i32 8, i32 %127)
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %131 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %130, i32 0, i32 1
  store i32* %129, i32** %131, align 8
  %132 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %133 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %145

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %137, %91, %66
  %139 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %140 = call i32 @oxu_dbg(%struct.oxu_hcd* %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %141 = load %struct.oxu_hcd*, %struct.oxu_hcd** %4, align 8
  %142 = call i32 @ehci_mem_cleanup(%struct.oxu_hcd* %141)
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %138, %136
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @oxu_qh_alloc(%struct.oxu_hcd*) #1

declare dso_local i32 @virt_to_phys(i8**) #1

declare dso_local i32 @oxu_dbg(%struct.oxu_hcd*, i8*) #1

declare dso_local i32 @ehci_mem_cleanup(%struct.oxu_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
