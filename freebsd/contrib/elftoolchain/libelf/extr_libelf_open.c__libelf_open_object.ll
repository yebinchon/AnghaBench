; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_open.c__libelf_open_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelf/extr_libelf_open.c__libelf_open_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, i32 }
%struct.stat = type { i64, i32 }

@ELF_C_READ = common dso_local global i64 0, align 8
@ELF_C_RDWR = common dso_local global i64 0, align 8
@ELF_C_WRITE = common dso_local global i64 0, align 8
@IO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ARGUMENT = common dso_local global i32 0, align 4
@ELF_K_ELF = common dso_local global i32 0, align 4
@byteorder = common dso_local global i32 0, align 4
@LIBELF_F_SPECIAL_FILE = common dso_local global i32 0, align 4
@RESOURCE = common dso_local global i32 0, align 4
@LIBELF_F_RAWFILE_MALLOC = common dso_local global i32 0, align 4
@LIBELF_F_RAWFILE_MMAP = common dso_local global i32 0, align 4
@ELF_K_AR = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i8* null, align 8
@MAP_PRIVATE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @_libelf_open_object(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @ELF_C_READ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ELF_C_RDWR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @ELF_C_WRITE, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %17, %3
  %26 = phi i1 [ true, %17 ], [ true, %3 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @fstat(i32 %29, %struct.stat* %12)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @IO, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @LIBELF_SET_ERROR(i32 %33, i32 %34)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %194

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @S_ISCHR(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @S_ISFIFO(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @S_ISSOCK(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @ARGUMENT, align 4
  %58 = call i32 @LIBELF_SET_ERROR(i32 %57, i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %194

59:                                               ; preds = %52, %48, %44, %36
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @ELF_C_WRITE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = call %struct.TYPE_7__* (...) @_libelf_allocate_elf()
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %8, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = load i32, i32* @ELF_K_ELF, align 4
  %69 = call i32 @_libelf_init_elf(%struct.TYPE_7__* %67, i32 %68)
  %70 = load i32, i32* @byteorder, align 4
  %71 = call i32 @LIBELF_PRIVATE(i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @S_ISREG(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %66
  %84 = load i32, i32* @LIBELF_F_SPECIAL_FILE, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %66
  br label %90

90:                                               ; preds = %89, %63
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %4, align 8
  br label %194

92:                                               ; preds = %59
  store i8* null, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @S_ISREG(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %92
  %97 = load i64, i64* %11, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @ARGUMENT, align 4
  %101 = call i32 @LIBELF_SET_ERROR(i32 %100, i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %194

102:                                              ; preds = %96
  %103 = load i8*, i8** %9, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load i64, i64* %11, align 8
  %107 = call i8* @malloc(i64 %106)
  store i8* %107, i8** %9, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @RESOURCE, align 4
  %111 = call i32 @LIBELF_SET_ERROR(i32 %110, i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %194

112:                                              ; preds = %105
  %113 = load i32, i32* %5, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @read(i32 %113, i8* %114, i64 %115)
  %117 = load i64, i64* %11, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @IO, align 4
  %121 = load i32, i32* @errno, align 4
  %122 = call i32 @LIBELF_SET_ERROR(i32 %120, i32 %121)
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @free(i8* %123)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %194

125:                                              ; preds = %112
  %126 = load i32, i32* @LIBELF_F_RAWFILE_MALLOC, align 4
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %125, %102
  br label %138

128:                                              ; preds = %92
  %129 = load i32, i32* %5, align 4
  %130 = call i8* @_libelf_read_special_file(i32 %129, i64* %11)
  store i8* %130, i8** %9, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* @LIBELF_F_RAWFILE_MALLOC, align 4
  %134 = load i32, i32* @LIBELF_F_SPECIAL_FILE, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %13, align 4
  br label %137

136:                                              ; preds = %128
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %194

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137, %127
  %139 = load i8*, i8** %9, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call %struct.TYPE_7__* @_libelf_memory(i8* %139, i64 %140, i32 %141)
  store %struct.TYPE_7__* %142, %struct.TYPE_7__** %8, align 8
  %143 = icmp eq %struct.TYPE_7__* %142, null
  br i1 %143, label %144, label %166

144:                                              ; preds = %138
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @LIBELF_F_RAWFILE_MALLOC, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @LIBELF_F_RAWFILE_MMAP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi i1 [ true, %144 ], [ %153, %149 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @LIBELF_F_RAWFILE_MALLOC, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @free(i8* %163)
  br label %165

165:                                              ; preds = %162, %154
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %194

166:                                              ; preds = %138
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* @ELF_C_RDWR, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %166
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @ELF_K_AR, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %178 = call i32 @elf_end(%struct.TYPE_7__* %177)
  %179 = load i32, i32* @ARGUMENT, align 4
  %180 = call i32 @LIBELF_SET_ERROR(i32 %179, i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %194

181:                                              ; preds = %170, %166
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load i64, i64* %6, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %193, %struct.TYPE_7__** %4, align 8
  br label %194

194:                                              ; preds = %181, %176, %165, %136, %119, %109, %99, %90, %56, %32
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %195
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @LIBELF_SET_ERROR(i32, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @S_ISFIFO(i32) #1

declare dso_local i32 @S_ISSOCK(i32) #1

declare dso_local %struct.TYPE_7__* @_libelf_allocate_elf(...) #1

declare dso_local i32 @_libelf_init_elf(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @LIBELF_PRIVATE(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @_libelf_read_special_file(i32, i64*) #1

declare dso_local %struct.TYPE_7__* @_libelf_memory(i8*, i64, i32) #1

declare dso_local i32 @elf_end(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
