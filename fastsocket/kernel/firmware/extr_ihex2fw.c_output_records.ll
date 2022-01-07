; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_output_records.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_output_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ihex_binrec = type { i32, i8, %struct.ihex_binrec* }

@records = common dso_local global %struct.ihex_binrec* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @output_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_records(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.ihex_binrec*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = bitcast [6 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 6, i1 false)
  %7 = load %struct.ihex_binrec*, %struct.ihex_binrec** @records, align 8
  store %struct.ihex_binrec* %7, %struct.ihex_binrec** %4, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %10 = icmp ne %struct.ihex_binrec* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %13 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 9
  %16 = and i32 %15, -4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %18 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 4
  %20 = call zeroext i8 @htonl(i8 zeroext %19)
  %21 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %22 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %21, i32 0, i32 1
  store i8 %20, i8* %22, align 4
  %23 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %24 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @htons(i32 %25)
  %27 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %28 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %31 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %30, i32 0, i32 1
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @write(i32 %29, i8* %31, i32 %32)
  %34 = load %struct.ihex_binrec*, %struct.ihex_binrec** %4, align 8
  %35 = getelementptr inbounds %struct.ihex_binrec, %struct.ihex_binrec* %34, i32 0, i32 2
  %36 = load %struct.ihex_binrec*, %struct.ihex_binrec** %35, align 8
  store %struct.ihex_binrec* %36, %struct.ihex_binrec** %4, align 8
  br label %8

37:                                               ; preds = %8
  %38 = load i32, i32* %2, align 4
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %40 = call i32 @write(i32 %38, i8* %39, i32 6)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local zeroext i8 @htonl(i8 zeroext) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
