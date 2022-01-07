; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_write_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_wrstabs.c_stab_write_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_write_handle = type { i32, i32, i32, i32*, i32, %struct.string_hash_entry*, %struct.string_hash_entry*, i32 }
%struct.string_hash_entry = type { i32, %struct.string_hash_entry* }

@STAB_SYMBOL_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"string_hash_lookup failed: %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stab_write_handle*, i32, i32, i32, i8*)* @stab_write_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_write_symbol(%struct.stab_write_handle* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stab_write_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.string_hash_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.stab_write_handle* %0, %struct.stab_write_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @STAB_SYMBOL_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %81

24:                                               ; preds = %5
  %25 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %26 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %25, i32 0, i32 7
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call %struct.string_hash_entry* @string_hash_lookup(i32* %26, i8* %27, i32 %28, i32 %29)
  store %struct.string_hash_entry* %30, %struct.string_hash_entry** %15, align 8
  %31 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %32 = icmp eq %struct.string_hash_entry* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 (...) @bfd_get_error()
  %36 = call i32 @bfd_errmsg(i32 %35)
  %37 = call i32 @non_fatal(i32 %34, i32 %36)
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %151

39:                                               ; preds = %24
  %40 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %41 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %46 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %12, align 4
  br label %80

48:                                               ; preds = %39
  %49 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %50 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %54 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %56 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %55, i32 0, i32 5
  %57 = load %struct.string_hash_entry*, %struct.string_hash_entry** %56, align 8
  %58 = icmp eq %struct.string_hash_entry* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %61 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %62 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %61, i32 0, i32 6
  store %struct.string_hash_entry* %60, %struct.string_hash_entry** %62, align 8
  br label %69

63:                                               ; preds = %48
  %64 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %65 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %66 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %65, i32 0, i32 5
  %67 = load %struct.string_hash_entry*, %struct.string_hash_entry** %66, align 8
  %68 = getelementptr inbounds %struct.string_hash_entry, %struct.string_hash_entry* %67, i32 0, i32 1
  store %struct.string_hash_entry* %64, %struct.string_hash_entry** %68, align 8
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.string_hash_entry*, %struct.string_hash_entry** %15, align 8
  %71 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %72 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %71, i32 0, i32 5
  store %struct.string_hash_entry* %70, %struct.string_hash_entry** %72, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %74, 1
  %76 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %77 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %69, %44
  br label %81

81:                                               ; preds = %80, %23
  %82 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %83 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @bfd_put_32(i32 %84, i32 %85, i32* %20)
  %87 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %88 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = getelementptr inbounds i32, i32* %20, i64 4
  %92 = call i32 @bfd_put_8(i32 %89, i32 %90, i32* %91)
  %93 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %94 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds i32, i32* %20, i64 5
  %97 = call i32 @bfd_put_8(i32 %95, i32 0, i32* %96)
  %98 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %99 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = getelementptr inbounds i32, i32* %20, i64 6
  %103 = call i32 @bfd_put_16(i32 %100, i32 %101, i32* %102)
  %104 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %105 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = getelementptr inbounds i32, i32* %20, i64 8
  %109 = call i32 @bfd_put_32(i32 %106, i32 %107, i32* %108)
  %110 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %111 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @STAB_SYMBOL_SIZE, align 4
  %114 = add nsw i32 %112, %113
  %115 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %116 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %114, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %81
  %120 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %121 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %122, 2
  store i32 %123, i32* %121, align 8
  %124 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %125 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %128 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @xrealloc(i32* %126, i32 %129)
  %131 = inttoptr i64 %130 to i32*
  %132 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %133 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %132, i32 0, i32 3
  store i32* %131, i32** %133, align 8
  br label %134

134:                                              ; preds = %119, %81
  %135 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %136 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %139 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* @STAB_SYMBOL_SIZE, align 4
  %144 = call i32 @memcpy(i32* %142, i32* %20, i32 %143)
  %145 = load i32, i32* @STAB_SYMBOL_SIZE, align 4
  %146 = load %struct.stab_write_handle*, %struct.stab_write_handle** %7, align 8
  %147 = getelementptr inbounds %struct.stab_write_handle, %struct.stab_write_handle* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %151

151:                                              ; preds = %134, %33
  %152 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.string_hash_entry* @string_hash_lookup(i32*, i8*, i32, i32) #2

declare dso_local i32 @non_fatal(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @bfd_errmsg(i32) #2

declare dso_local i32 @bfd_get_error(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @bfd_put_32(i32, i32, i32*) #2

declare dso_local i32 @bfd_put_8(i32, i32, i32*) #2

declare dso_local i32 @bfd_put_16(i32, i32, i32*) #2

declare dso_local i64 @xrealloc(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
