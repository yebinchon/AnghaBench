; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_pci_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_pci_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"pci:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@PCI_ANY_ID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Can't handle masks in %s:%04X\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pci_device_id*, i8*)* @do_pci_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_pci_entry(i8* %0, %struct.pci_device_id* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %15 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @TO_NATIVE(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %20 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %22 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @TO_NATIVE(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %27 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %29 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @TO_NATIVE(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %34 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %36 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @TO_NATIVE(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %41 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %43 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @TO_NATIVE(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %48 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %50 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @TO_NATIVE(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %55 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %60 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @PCI_ANY_ID, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %67 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = trunc i32 %68 to i8
  %70 = call i32 @ADD(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8 zeroext %69)
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %73 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @PCI_ANY_ID, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %80 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = trunc i32 %81 to i8
  %83 = call i32 @ADD(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %78, i8 zeroext %82)
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %86 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @PCI_ANY_ID, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %93 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = trunc i32 %94 to i8
  %96 = call i32 @ADD(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %91, i8 zeroext %95)
  %97 = load i8*, i8** %7, align 8
  %98 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %99 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @PCI_ANY_ID, align 8
  %103 = icmp ne i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %106 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = trunc i32 %107 to i8
  %109 = call i32 @ADD(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %104, i8 zeroext %108)
  %110 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %111 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 16
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %8, align 1
  %115 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %116 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 16
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %11, align 1
  %120 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %121 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 8
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %9, align 1
  %125 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %126 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 8
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %12, align 1
  %130 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %131 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %10, align 1
  %134 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %135 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %13, align 1
  %138 = load i8, i8* %11, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %3
  %142 = load i8, i8* %11, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp ne i32 %143, 255
  br i1 %144, label %161, label %145

145:                                              ; preds = %141, %3
  %146 = load i8, i8* %12, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i8, i8* %12, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp ne i32 %151, 255
  br i1 %152, label %161, label %153

153:                                              ; preds = %149, %145
  %154 = load i8, i8* %13, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = load i8, i8* %13, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ne i32 %159, 255
  br i1 %160, label %161, label %168

161:                                              ; preds = %157, %149, %141
  %162 = load i8*, i8** %5, align 8
  %163 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %164 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = trunc i32 %165 to i8
  %167 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %162, i8 zeroext %166)
  store i32 0, i32* %4, align 4
  br label %192

168:                                              ; preds = %157, %153
  %169 = load i8*, i8** %7, align 8
  %170 = load i8, i8* %11, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %171, 255
  %173 = zext i1 %172 to i32
  %174 = load i8, i8* %8, align 1
  %175 = call i32 @ADD(i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %173, i8 zeroext %174)
  %176 = load i8*, i8** %7, align 8
  %177 = load i8, i8* %12, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp eq i32 %178, 255
  %180 = zext i1 %179 to i32
  %181 = load i8, i8* %9, align 1
  %182 = call i32 @ADD(i8* %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %180, i8 zeroext %181)
  %183 = load i8*, i8** %7, align 8
  %184 = load i8, i8* %13, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %185, 255
  %187 = zext i1 %186 to i32
  %188 = load i8, i8* %10, align 1
  %189 = call i32 @ADD(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %187, i8 zeroext %188)
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 @add_wildcard(i8* %190)
  store i32 1, i32* %4, align 4
  br label %192

192:                                              ; preds = %168, %161
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i8* @TO_NATIVE(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ADD(i8*, i8*, i32, i8 zeroext) #1

declare dso_local i32 @warn(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
