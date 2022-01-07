; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_misc.c_udf_update_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_misc.c_udf_update_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tag = type { i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_update_tag(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tag*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.tag*
  store %struct.tag* %7, %struct.tag** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = sub i64 %9, 24
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = load %struct.tag*, %struct.tag** %5, align 8
  %15 = getelementptr inbounds %struct.tag, %struct.tag* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 24
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @crc_itu_t(i32 0, i8* %17, i32 %18)
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.tag*, %struct.tag** %5, align 8
  %22 = getelementptr inbounds %struct.tag, %struct.tag* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.tag*, %struct.tag** %5, align 8
  %24 = call i32 @udf_tag_checksum(%struct.tag* %23)
  %25 = load %struct.tag*, %struct.tag** %5, align 8
  %26 = getelementptr inbounds %struct.tag, %struct.tag* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @crc_itu_t(i32, i8*, i32) #1

declare dso_local i32 @udf_tag_checksum(%struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
