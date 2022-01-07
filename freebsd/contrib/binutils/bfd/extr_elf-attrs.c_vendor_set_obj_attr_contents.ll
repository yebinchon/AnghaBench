; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-attrs.c_vendor_set_obj_attr_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-attrs.c_vendor_set_obj_attr_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

@Tag_File = common dso_local global i32 0, align 4
@NUM_KNOWN_OBJ_ATTRIBUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @vendor_set_obj_attr_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vendor_set_obj_attr_contents(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i8* @vendor_obj_attr_name(i32* %15, i32 %16)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %14, align 8
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @bfd_put_32(i32* %23, i32 %24, i32* %25)
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @memcpy(i32* %29, i8* %30, i64 %31)
  %33 = load i64, i64* %14, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 %33
  store i32* %35, i32** %9, align 8
  %36 = load i32, i32* @Tag_File, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %14, align 8
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @bfd_put_32(i32* %39, i32 %45, i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i32** @elf_known_obj_attributes(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %10, align 8
  store i32 4, i32* %12, align 4
  br label %56

56:                                               ; preds = %68, %4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @NUM_KNOWN_OBJ_ATTRIBUTES, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32* @write_obj_attribute(i32* %61, i32 %62, i32* %66)
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load i32*, i32** %5, align 8
  %73 = call %struct.TYPE_3__** @elf_other_obj_attributes(i32* %72)
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %73, i64 %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %11, align 8
  br label %78

78:                                               ; preds = %89, %71
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %80 = icmp ne %struct.TYPE_3__* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = call i32* @write_obj_attribute(i32* %82, i32 %85, i32* %87)
  store i32* %88, i32** %9, align 8
  br label %89

89:                                               ; preds = %81
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  store %struct.TYPE_3__* %92, %struct.TYPE_3__** %11, align 8
  br label %78

93:                                               ; preds = %78
  ret void
}

declare dso_local i8* @vendor_obj_attr_name(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32** @elf_known_obj_attributes(i32*) #1

declare dso_local i32* @write_obj_attribute(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__** @elf_other_obj_attributes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
