; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_ctf_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_ctf_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32*, i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_19__, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@CTF_SWAP_BYTES = common dso_local global i32 0, align 4
@target_requires_swap = common dso_local global i32 0, align 4
@CTF_MAGIC = common dso_local global i32 0, align 4
@CTF_VERSION = common dso_local global i32 0, align 4
@CTF_F_COMPRESS = common dso_local global i32 0, align 4
@write_label = common dso_local global i32 0, align 4
@write_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"CTF wrote %d types\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctf_gen(%struct.TYPE_20__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call %struct.TYPE_22__* (...) @ctf_buf_new()
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CTF_SWAP_BYTES, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* @target_requires_swap, align 4
  %15 = load i32, i32* @CTF_SWAP_BYTES, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @CTF_MAGIC, align 4
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 11
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @CTF_VERSION, align 4
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 10
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @CTF_F_COMPRESS, align 4
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 9
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @strtab_insert(i32* %32, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 7
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @strtab_insert(i32* %41, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 6
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 5
  store i8* null, i8** %49, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @write_label, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %57 = call i32 @list_iter(i32 %54, i32 %55, %struct.TYPE_22__* %56)
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = call i32 @pad_buffer(%struct.TYPE_22__* %58, i32 2)
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %61 = call i8* @ctf_buf_cur(%struct.TYPE_22__* %60)
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 4
  store i8* %61, i8** %62, align 8
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %79, %28
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %78 = call i32 @write_objects(i32 %76, %struct.TYPE_22__* %77)
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %63

82:                                               ; preds = %63
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %84 = call i32 @pad_buffer(%struct.TYPE_22__* %83, i32 2)
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %86 = call i8* @ctf_buf_cur(%struct.TYPE_22__* %85)
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  store i8* %86, i8** %87, align 8
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %104, %82
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = call i32 @write_functions(i32 %101, %struct.TYPE_22__* %102)
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %88

107:                                              ; preds = %88
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = call i32 @pad_buffer(%struct.TYPE_22__* %108, i32 4)
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %111 = call i8* @ctf_buf_cur(%struct.TYPE_22__* %110)
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  store i8* %111, i8** %112, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @write_type, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %118 = call i32 @list_iter(i32 %115, i32 %116, %struct.TYPE_22__* %117)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @list_count(i32 %121)
  %123 = call i32 @debug(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %125 = call i8* @ctf_buf_cur(%struct.TYPE_22__* %124)
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  store i8* %125, i8** %126, align 8
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = call i8* @strtab_size(i32* %128)
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i8* %129, i8** %130, align 8
  %131 = load i32, i32* @target_requires_swap, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %107
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @SWAP_16(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 7
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @SWAP_32(i8* %139)
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 6
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @SWAP_32(i8* %142)
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 5
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @SWAP_32(i8* %145)
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @SWAP_32(i8* %148)
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @SWAP_32(i8* %151)
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @SWAP_32(i8* %154)
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @SWAP_32(i8* %157)
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @SWAP_32(i8* %160)
  br label %162

162:                                              ; preds = %133, %107
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %167 = load i64*, i64** %5, align 8
  %168 = call i32 @write_compressed_buffer(%struct.TYPE_21__* %8, %struct.TYPE_22__* %166, i64* %167)
  store i32 %168, i32* %9, align 4
  br label %173

169:                                              ; preds = %162
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %171 = load i64*, i64** %5, align 8
  %172 = call i32 @write_buffer(%struct.TYPE_21__* %8, %struct.TYPE_22__* %170, i64* %171)
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %169, %165
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %175 = call i32 @ctf_buf_free(%struct.TYPE_22__* %174)
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_22__* @ctf_buf_new(...) #1

declare dso_local i8* @strtab_insert(i32*, i32) #1

declare dso_local i32 @list_iter(i32, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @pad_buffer(%struct.TYPE_22__*, i32) #1

declare dso_local i8* @ctf_buf_cur(%struct.TYPE_22__*) #1

declare dso_local i32 @write_objects(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @write_functions(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @list_count(i32) #1

declare dso_local i8* @strtab_size(i32*) #1

declare dso_local i32 @SWAP_16(i32) #1

declare dso_local i32 @SWAP_32(i8*) #1

declare dso_local i32 @write_compressed_buffer(%struct.TYPE_21__*, %struct.TYPE_22__*, i64*) #1

declare dso_local i32 @write_buffer(%struct.TYPE_21__*, %struct.TYPE_22__*, i64*) #1

declare dso_local i32 @ctf_buf_free(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
