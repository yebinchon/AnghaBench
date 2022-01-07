; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_write_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ihex.c_ihex_write_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ihex_write_record.digs = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@CHUNK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, i32*)* @ihex_write_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ihex_write_record(i32* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* @CHUNK, align 4
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 9, %20
  %22 = add nsw i32 %21, 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 58, i8* %26, align 16
  %27 = load i64, i64* %8, align 8
  %28 = lshr i64 %27, 4
  %29 = and i64 %28, 15
  %30 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = getelementptr inbounds i8, i8* %25, i64 1
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %31, i8* %33, align 1
  %34 = load i64, i64* %8, align 8
  %35 = and i64 %34, 15
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = getelementptr inbounds i8, i8* %25, i64 1
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 %37, i8* %39, align 1
  %40 = load i32, i32* %9, align 4
  %41 = lshr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = lshr i32 %42, 4
  %44 = and i32 %43, 15
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = getelementptr inbounds i8, i8* %25, i64 3
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %47, i8* %49, align 1
  %50 = load i32, i32* %9, align 4
  %51 = lshr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = and i32 %52, 15
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = getelementptr inbounds i8, i8* %25, i64 3
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %56, i8* %58, align 1
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 255
  %61 = lshr i32 %60, 4
  %62 = and i32 %61, 15
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = getelementptr inbounds i8, i8* %25, i64 5
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %65, i8* %67, align 1
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 255
  %70 = and i32 %69, 15
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds i8, i8* %25, i64 5
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %73, i8* %75, align 1
  %76 = load i32, i32* %10, align 4
  %77 = lshr i32 %76, 4
  %78 = and i32 %77, 15
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = getelementptr inbounds i8, i8* %25, i64 7
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 %81, i8* %83, align 1
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %84, 15
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = getelementptr inbounds i8, i8* %25, i64 7
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8 %88, i8* %90, align 1
  %91 = load i64, i64* %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = add i64 %91, %93
  %95 = load i32, i32* %9, align 4
  %96 = lshr i32 %95, 8
  %97 = zext i32 %96 to i64
  %98 = add i64 %94, %97
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = add i64 %98, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %103 = getelementptr inbounds i8, i8* %25, i64 9
  store i8* %103, i8** %14, align 8
  br label %104

104:                                              ; preds = %131, %5
  %105 = load i32, i32* %16, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %8, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %104
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = lshr i32 %111, 4
  %113 = and i32 %112, 15
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %14, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 %116, i8* %118, align 1
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 15
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = load i8*, i8** %14, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8 %124, i8* %126, align 1
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %15, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %109
  %132 = load i32, i32* %16, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %16, align 4
  %134 = load i8*, i8** %14, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  store i8* %135, i8** %14, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %11, align 8
  br label %104

138:                                              ; preds = %104
  %139 = load i32, i32* %15, align 4
  %140 = sub i32 0, %139
  %141 = and i32 %140, 255
  %142 = lshr i32 %141, 4
  %143 = and i32 %142, 15
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = load i8*, i8** %14, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  store i8 %146, i8* %148, align 1
  %149 = load i32, i32* %15, align 4
  %150 = sub i32 0, %149
  %151 = and i32 %150, 255
  %152 = and i32 %151, 15
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [17 x i8], [17 x i8]* @ihex_write_record.digs, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = load i8*, i8** %14, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  store i8 %155, i8* %157, align 1
  %158 = load i8*, i8** %14, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8 13, i8* %159, align 1
  %160 = load i8*, i8** %14, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 3
  store i8 10, i8* %161, align 1
  %162 = load i64, i64* %8, align 8
  %163 = mul i64 %162, 2
  %164 = add i64 9, %163
  %165 = add i64 %164, 4
  store i64 %165, i64* %17, align 8
  %166 = load i64, i64* %17, align 8
  %167 = trunc i64 %166 to i32
  %168 = load i32*, i32** %7, align 8
  %169 = call i64 @bfd_bwrite(i8* %25, i32 %167, i32* %168)
  %170 = load i64, i64* %17, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %138
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %176

174:                                              ; preds = %138
  %175 = load i32, i32* @TRUE, align 4
  store i32 %175, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bfd_bwrite(i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
